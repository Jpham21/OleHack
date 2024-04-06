import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:network_data/main.dart';

void main() {
  testWidgets('Check Registration Process', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the email and password text fields are present.
    expect(find.byType(TextField), findsNWidgets(2));

    // Enter text into the email and password text fields.
    await tester.enterText(find.byType(TextField).first, 'test@example.com');
    await tester.enterText(find.byType(TextField).last, 'password123');

    // Tap the Register button.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Check if the registration process succeeded.
    // You might need to adjust the expected behavior according to your app's logic.
    expect(find.text('User registered:'), findsOneWidget);
  });
}
