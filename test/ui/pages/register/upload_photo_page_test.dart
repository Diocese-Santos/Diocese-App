import 'package:diocese_santos/ui/pages/register/upload_photo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../presentation/mock/register_upload_photo_presenter_spy.dart';

void main() {
  late RegisterUploadPhotoPresenterSpy presenter;
  late Widget sut;

  setUp(() {
    presenter = RegisterUploadPhotoPresenterSpy();
    sut = MaterialApp(
      home: RegisterUploadPhotoPage(presenter: presenter),
    );
  });

  testWidgets('should show header text', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Foto'), findsOne);
    expect(find.text('Insira uma foto sua para ser mostrado no seu perfil'),
        findsOne);
  });

  // testWidgets('should present form section', (tester) async {
  //   await tester.pumpWidget(sut);
  //   await tester.pump();
  //   expect(find.byType(Form), findsOne);
  //   expect(find.byType(TextFormField), findsNWidgets(3));
  //   expect(find.text('Data de Nascimento'), findsOne);
  //   expect(find.text('Cidade'), findsOne);
  //   expect(find.text('Paróquia'), findsOne);
  // });

  testWidgets('should present login link', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Já tem uma conta? Faça login'), findsOne);
  });

  testWidgets('should present create account button', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Criar Conta'), findsOne);
    await tester.ensureVisible(find.text('Criar Conta'));
    await tester.tap(find.text('Criar Conta'));
    expect(presenter.uploadPhotoCount, 1);
  });
}
