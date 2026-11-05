#!/usr/bin/env bash
# End-to-end tests: transpile every example, analyze the Dart, run it, and
# compare stdout with the checked-in .expected file.
set -uo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

tmp="$(mktemp -d "${TMPDIR:-/tmp}/cljd2dart-test.XXXXXX")"
trap 'rm -rf "$tmp"' EXIT

fail=0

echo "== CLI =="
if ./cljd2dart --version | grep -q "^cljd2dart "; then
  echo "ok: --version"
else
  echo "FAIL: --version"
  fail=1
fi

if ./cljd2dart --help | grep -q "^Usage:"; then
  echo "ok: --help"
else
  echo "FAIL: --help"
  fail=1
fi

if cat examples/hello.cljd | ./cljd2dart - --stdout | grep -q "dynamic main"; then
  echo "ok: stdin/stdout invocation"
else
  echo "FAIL: stdin/stdout invocation"
  fail=1
fi

echo "== examples =="
for src in examples/*.cljd; do
  name="$(basename "$src" .cljd)"
  out="$tmp/$name.dart"

  if ! ./cljd2dart "$src" -o "$out" >/dev/null; then
    echo "FAIL: transpile $name"
    fail=1
    continue
  fi

  if ! dart analyze "$out" >/dev/null 2>&1; then
    echo "FAIL: analyze $name"
    dart analyze "$out" | tail -20
    fail=1
    continue
  fi

  if ! dart "$out" >"$tmp/$name.actual" 2>"$tmp/$name.err"; then
    echo "FAIL: run $name"
    cat "$tmp/$name.err"
    fail=1
    continue
  fi

  if diff -u "examples/$name.expected" "$tmp/$name.actual"; then
    echo "ok: $name"
  else
    echo "FAIL: output $name"
    fail=1
  fi
done

if [ "$fail" -ne 0 ]; then
  echo "Some tests failed."
  exit 1
fi

echo "All tests passed."
