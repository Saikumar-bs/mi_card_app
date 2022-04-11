import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mi_card/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('To open app and check circle avatar is present or not',
      (WidgetTester tester) async {
    //arrange
    app.main();
    await tester.pumpAndSettle();
    const testKey = Key('C');

    // Build a MaterialApp with the testKey.
    await tester.pumpWidget(MaterialApp(key: testKey, home: CircleAvatar()));

    // Find the MaterialApp widget using the testKey.
    expect(find.byKey(testKey), findsNWidgets(1));
  });
}
