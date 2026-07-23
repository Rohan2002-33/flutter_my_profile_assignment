// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_profile/main.dart';

void main() {
  testWidgets('renders the profile screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('My Profile'), findsOneWidget);
    expect(find.text('Ice cream is very delicious right?'), findsOneWidget);
    expect(find.text('Programming is not boring if you love it'), findsOneWidget);
    expect(find.byIcon(Icons.icecream_outlined), findsOneWidget);
    expect(find.byIcon(Icons.code), findsOneWidget);
  });
}
