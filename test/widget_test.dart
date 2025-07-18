import 'package:flutter_test/flutter_test.dart';
import 'package:project_sayogi/main.dart';
import 'package:project_sayogi/repositories/auth_repository.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('LoginScreen shows welcome text and login button', (WidgetTester tester) async {
    // Create the AuthRepository instance (can be a mock for real tests)
    final authRepository = AuthRepository(baseUrl: 'http://127.0.0.1:8000/api');

    // Build the app with authRepository
    await tester.pumpWidget(MyApp(authRepository: authRepository));

    // Wait for frames to settle
    await tester.pumpAndSettle();

    // Check if the welcome text is found
    expect(find.text('स्वागत छ'), findsOneWidget);

    // Check if the login button is found
    expect(find.text('लगइन'), findsOneWidget);

    // Check if the phone number input field is present
    expect(find.byType(TextFormField), findsOneWidget);
  });
}
