import 'package:diocese_santos/ui/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../presentation/mock/login_rx_presenter_spy.dart';

void main() {
  late LoginPresenterSpy presenter;
  late Widget sut;

  setUp(() {
    presenter = LoginPresenterSpy();
    sut = MaterialApp(
      home: LoginPage(presenter: presenter),
    );
  });

  testWidgets('should show header text', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Faça Login com sua conta'), findsOne);
    expect(find.text('Faça login e acesse seu perfil'), findsOne);
  });
}
