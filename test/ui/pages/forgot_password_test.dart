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

  testWidgets('should show form section', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.byType(Form), findsOne);
    expect(find.byType(TextFormField), findsOne);
    expect(find.text('E-mail'), findsOne);
    expect(find.text('Recuperar'), findsOne);
    expect(find.text('Cancelar'), findsOne);
  });

  testWidgets('should present recovery button', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Recuperar'), findsOne);
    await tester.tap(find.text('Recuperar'));
    expect(presenter.recoveryPasswordCount, 1);
  });
}
