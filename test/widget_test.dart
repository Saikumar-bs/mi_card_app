import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mi_card/main.dart';

void main() {
  group('To test text, font size and color', () {
    testWidgets('To test text name', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MyApp());

      // find the text Sai Kumar Meesala.
      final text = find.text('Sai Kumar Meesala');

      //verify the finder
      expect(text, findsOneWidget);
    });

    testWidgets('To test text position', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MyApp());

      // find the text FLUTTER DEVELOPER.
      final text = find.text('FLUTTER DEVELOPER');

      //verify the finder
      expect(text, findsOneWidget);
    });

    testWidgets('To test mail id', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MyApp());

      // find the mail id.
      final text = find.text('saikumar@bluesapience.com');

      //verify the finder
      expect(text, findsOneWidget);
    });

    testWidgets('To test color and fontSize of text',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MyApp());

      // find the text.
      final text = tester.widget<Text>(find.text("FLUTTER DEVELOPER"));

      //verify the finder
      expect(text.style.color, Colors.teal.shade100);
      expect(text.style.fontSize, 20.0);
    });
  });

  group("To test icons", () {
    testWidgets('To test icons', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MyApp());

      // Verify that test icons exist.
      expect(find.byIcon(Icons.phone), findsOneWidget);
      expect(find.byIcon(Icons.email), findsOneWidget);
    });

    testWidgets('To test color icon', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MyApp());

      final myIcon = tester.widget(find.byIcon(Icons.phone));

      //verify the finder
      expect((myIcon as Icon).color, Colors.teal);
    });
  });

  testWidgets('finds scaffold using a Key', (WidgetTester tester) async {
    // Define the test key.
    const testKey = Key('K');

    // Build a MaterialApp with the testKey.
    await tester.pumpWidget(MaterialApp(key: Key('K')));

    // Find the MaterialApp widget using the testKey.
    expect(find.byKey(Key('K')), findsOneWidget);
  });

  testWidgets('finds a circle avatar using a key', (WidgetTester tester) async {
    // Define the test key.
    const testKey = Key('C');

    // Build a MaterialApp with the testKey.
    await tester.pumpWidget(MaterialApp(key: Key('C')));

    // Find the MaterialApp widget using the testKey.
    expect(find.byKey(Key('C')), findsNWidgets(1));
  });

  testWidgets('To test radius of circle avatar', (WidgetTester tester) async {
    const childWidget = CircleAvatar(
      radius: 50.0,
    );

    // Provide the childWidget to the Container.
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: CircleAvatar())));

    // Search for the childWidget in the tree and verify it exists.
    expect(find.byWidget(childWidget), findsOneWidget);
  });
}
