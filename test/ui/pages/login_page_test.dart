import 'package:diocese_santos/domain/entites/user.dart';
import 'package:diocese_santos/presentation/presenters/login_presenter.dart';
import 'package:diocese_santos/ui/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../presentation/mock/login_rx_presenter_spy.dart';

void main() {
  late LoginPresenterSpy presenter;
  late Widget sut;

  setUp(() {
    presenter = LoginPresenterSpy();
    sut = MaterialApp(home: LoginPage(presenter: presenter));
  });

  testWidgets('should show header text', (tester) async {
    await tester.pumpWidget(sut);
    presenter.emitLoginViewModel(
      LoginViewModel(user: User(id: '', name: '', email: '')),
    );
    await tester.pump();
    expect(find.text('Faça Login com sua conta'), findsOne);
    expect(find.text('Faça login e acesse seu perfil'), findsOne);
  });

  testWidgets('should present form section', (tester) async {
    await tester.pumpWidget(sut);
    presenter.emitLoginViewModel(
      LoginViewModel(user: User(id: '', name: '', email: '')),
    );
    await tester.pump();
    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.text('E-mail'), findsOne);
    expect(find.text('Senha'), findsOne);
    expect(find.text('Esqueci minha senha'), findsOne);
    expect(find.text('Login'), findsOne);
    expect(find.text('Continuar como visitante'), findsOne);
  });

  testWidgets('should present forgot my password link', (tester) async {
    await tester.pumpWidget(sut);
    presenter.emitLoginViewModel(
      LoginViewModel(user: User(id: '', name: '', email: '')),
    );
    await tester.pump();
    expect(find.text('Esqueci minha senha'), findsOne);
  });

  testWidgets('should present sign in button', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Login'), findsOne);
    await tester.tap(find.text('Login'));
    expect(presenter.signInCount, 1);
  }, skip: true);

  testWidgets('should present navigate with visitor button', (tester) async {
    await tester.pumpWidget(sut);
    presenter.emitLoginViewModel(
      LoginViewModel(user: User(id: '', name: '', email: '')),
    );
    await tester.pump();
    expect(find.text('Continuar como visitante'), findsOne);
  });

  testWidgets('should present register link', (tester) async {
    await tester.pumpWidget(sut);
    presenter.emitLoginViewModel(
      LoginViewModel(user: User(id: '', name: '', email: '')),
    );
    await tester.pump();
    expect(find.text('Não tem uma conta? Registre-se'), findsOne);
  });
}
