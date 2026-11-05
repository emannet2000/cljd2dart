#!/usr/bin/env bash
# Regenerate lib/main.dart from cljd/main.cljd with cljd2dart.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT/.."

./cljd2dart flutter_counter/cljd/main.cljd -o flutter_counter/lib/main.dart
