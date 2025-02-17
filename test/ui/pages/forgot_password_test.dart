import 'package:diocese_santos/ui/pages/forgot_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../presentation/mock/forgot_password_presenter_spy.dart';

void main() {
  late ForgotPasswordPresenterSpy presenter;
  late Widget sut;

  setUp(() {
    presenter = ForgotPasswordPresenterSpy();
    sut = MaterialApp(
      home: ForgotPasswordPage(presenter: presenter),
    );
  });

  testWidgets('should show header text', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Recuperar senha'), findsOne);
    expect(find.text('Insira seu email para resetar sua senha'), findsOne);
  });
}
