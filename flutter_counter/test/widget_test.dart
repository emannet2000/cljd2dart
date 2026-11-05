import 'package:flutter_test/flutter_test.dart';

import 'package:cljd_counter/main.dart' as app;

void main() {
  testWidgets('counter increments and resets', (WidgetTester tester) async {
    app.reset_counter();
    app.main();
    await tester.pumpAndSettle();

    expect(find.text('Count: 0'), findsOneWidget);

    await tester.tap(find.text('+1'));
    await tester.pump();
    expect(find.text('Count: 1'), findsOneWidget);

    await tester.tap(find.text('-1'));
    await tester.pump();
    expect(find.text('Count: 0'), findsOneWidget);

    await tester.tap(find.text('+1'));
    await tester.pump();
    await tester.tap(find.text('Reset'));
    await tester.pump();
    expect(find.text('Count: 0'), findsOneWidget);
  });
}
