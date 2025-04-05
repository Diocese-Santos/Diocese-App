import 'package:diocese_santos/ui/pages/register/complete_data_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../presentation/mock/register_complete_data_presenter_spy.dart';

void main() {
  late RegisterCompleteDataPresenterSpy presenter;
  late Widget sut;

  setUp(() {
    presenter = RegisterCompleteDataPresenterSpy();
    sut = MaterialApp(
      home: RegisterCompleteDataPage(presenter: presenter),
    );
  });

  testWidgets('should show header text', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Falta pouco'), findsOne);
    expect(find.text('Insira dados adicionais para uma melhor experiência'),
        findsOne);
  });

  testWidgets('should present form section', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.byType(Form), findsOne);
    expect(find.byType(TextFormField), findsNWidgets(3));
    expect(find.text('Data de Nascimento'), findsOne);
    expect(find.text('Cidade'), findsOne);
    expect(find.text('Paróquia'), findsOne);
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
