import 'package:flutter_test/flutter_test.dart';
import 'package:student_app/main.dart';

void main() {
  testWidgets('Welcome screen renders onboarding actions', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyWidget());

    expect(
      find.text(
        'Payez vos repas en un scan. Rechargez\net transférez en quelques secondes.',
      ),
      findsOneWidget,
    );
    expect(find.text('Créer un compte'), findsOneWidget);
    expect(find.text('Se connecter'), findsOneWidget);
  });
}
