import 'package:diocese_santos/presentation/presenters/login_presenter.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.presenter});

  final LoginPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Faça Login com sua conta'),
          Text('Faça login e acesse seu perfil'),
          Form(
            child: Column(
              children: [
                TextFormField(decoration: InputDecoration(labelText: 'E-mail')),
                TextFormField(decoration: InputDecoration(labelText: 'Senha')),
                Text('Esqueci minha senha'),
                ElevatedButton(onPressed: () {}, child: Text('Entrar')),
                TextButton(
                  onPressed: () {},
                  child: Text('Continuar como visitante'),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: presenter.navigateToSignUp,
            child: Text('Não tem uma conta? Registre-se'),
          ),
        ],
      ),
    );
  }
}
