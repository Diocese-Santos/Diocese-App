import 'package:diocese_santos/ui/pages/register/basic_data_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../presentation/mock/register_basic_data_presenter_spy.dart';

void main() {
  late RegisterBasicDataPresenterSpy presenter;
  late Widget sut;

  setUp(() {
    presenter = RegisterBasicDataPresenterSpy();
    sut = MaterialApp(
      home: RegisterBasicDataPage(presenter: presenter),
    );
  });

  testWidgets('should show header text', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Criar Conta'), findsOne);
    expect(find.text('Insira seus dados e crie sua conta'), findsOne);
  });

  testWidgets('should present form section', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.byType(Form), findsOne);
    expect(find.byType(TextFormField), findsNWidgets(3));
    expect(find.text('Nome'), findsOne);
    expect(find.text('E-mail'), findsOne);
    expect(find.text('Senha'), findsOne);
    expect(find.text('Próximo'), findsOne);
    expect(find.text('Continuar como visitante'), findsOne);
  });

  testWidgets('should present login link', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Já tem uma conta? Faça login'), findsOne);
  });

  testWidgets('should present next button', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Próximo'), findsOne);
    await tester.tap(find.text('Próximo'));
    expect(presenter.nextCount, 1);
  });

  testWidgets('should present navigate with visitor button', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Continuar como visitante'), findsOne);
  });
}
