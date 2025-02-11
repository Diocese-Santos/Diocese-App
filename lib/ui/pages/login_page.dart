import 'package:diocese_santos/presentation/presenters/login_presenter.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.presenter});

  final LoginPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Faça Login com sua conta'),
        Text('Faça login e acesse seu perfil'),
      ],
    );
  }
}
