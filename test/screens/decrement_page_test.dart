// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bisect_demo/screens/decrement_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter decrements smoke test', (WidgetTester tester) async {
    const int initialValue = 999;
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: DecrementPage(
        initialValue: initialValue,
      ),
    ));

    // Verify that our counter starts at 0.
    expect(find.text(initialValue.toString()), findsOneWidget);
    expect(find.text((initialValue - 1).toString()), findsNothing);

    // Tap the '-' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text(initialValue.toString()), findsNothing);
    expect(find.text((initialValue - 1).toString()), findsOneWidget);
  });
}
