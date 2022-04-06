import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mi_card/main.dart';

void main() {
  
testWidgets('To test icons', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that test icons exist.
    expect(find.byIcon(Icons.phone), findsOneWidget);
    expect(find.byIcon(Icons.email), findsOneWidget);
    
  });


testWidgets('To test text name', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // find the text Sai Kumar Meesala.
    final textfinder = find.text('Sai Kumar Meesala');

    //verify the finder
    expect(textfinder, findsOneWidget);
  });

testWidgets('To test text position', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // find the text FLUTTER DEVELOPER.
    final positionfinder = find.text('FLUTTER DEVELOPER');

    //verify the finder
    expect(positionfinder, findsOneWidget);
  });

testWidgets('To test mailid', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // find the mail id.
    final mailfinder = find.text('saikumar@bluesapience.com');

    //verify the finder
    expect(mailfinder, findsOneWidget);
  });
}