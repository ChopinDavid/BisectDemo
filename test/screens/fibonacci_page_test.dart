// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bisect_demo/screens/fibonacci_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: FibonacciPage(),
    ));

    expect(find.text('1'), findsOneWidget);

    Future increment() async {
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
    }

    await increment();
    expect(find.text('1'), findsOneWidget);
    await increment();
    expect(find.text('2'), findsOneWidget);
    await increment();
    expect(find.text('3'), findsOneWidget);
    await increment();
    expect(find.text('5'), findsOneWidget);
    await increment();
    expect(find.text('8'), findsOneWidget);
    await increment();
    expect(find.text('13'), findsOneWidget);
    await increment();
    expect(find.text('21'), findsOneWidget);
    await increment();
    expect(find.text('34'), findsOneWidget);
    await increment();
  });
}
