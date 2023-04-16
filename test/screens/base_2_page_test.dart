// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:math';

import 'package:bisect_demo/screens/base_2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments power of current value smoke test',
      (WidgetTester tester) async {
    const counterKey = Key('counter-key');
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: Base2Page(),
    ));

    for (int i = 0; i < 63; i++) {
      expect(tester.widget<Text>(find.byKey(counterKey)).data,
          pow(2, i).toString());
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
    }
  });
}
