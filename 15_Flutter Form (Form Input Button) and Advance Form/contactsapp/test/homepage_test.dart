import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:contactsapp/main.dart';

void main() {
  group('Contact App', () {
    testWidgets('Contact App', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('Contact List'), findsOneWidget);
    });

    testWidgets('Title Widgets', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('Contact List'), findsOneWidget);
    });

    testWidgets("Button Widget", (WidgetTester test) async {
      await test.pumpWidget(const MyApp());
      await test.tap(find.byIcon(Icons.add));
      await test.tap(find.byIcon(Icons.delete));
      await test.pumpAndSettle();
    });

    testWidgets("Form widget", (WidgetTester test) async {
      await test.pumpWidget(const MyApp());
      find.byType(TextFormField);
      find.widgetWithText(TextFormField, 'Email');
    });

    /* testWidgets("Form widget", (WidgetTester test) async {
      await test.pumpWidget(const MyApp());
      find.byType(TextFormField);
      find.widgetWithText(TextFormField, 'Email');
    }); */
  });



  


}
