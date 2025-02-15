import 'package:diocese_santos/presentation/presenters/login_presenter.dart';
import 'package:diocese_santos/ui/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.presenter});

  final LoginPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              title: 'Faça Login com sua conta',
              child: Text(
                'Faça login e acesse seu perfil',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white70,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 32,
              ),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'E-mail',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.grey.shade600,
                          ),
                    ),
                    Gap(12),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Seu e-mail',
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Gap(16),
                    Text(
                      'Senha',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.grey.shade600,
                          ),
                    ),
                    Gap(12),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Sua senha',
                        prefixIcon: Icon(Icons.lock_outlined),
                      ),
                      obscureText: true,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: presenter.navigateToForgotPassword,
                        child: Text(
                          'Esqueci minha senha',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Gap(24),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: FilledButton(
                        onPressed: presenter.signIn,
                        child: Text(
                          'Login',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: presenter.navigateWithVisitor,
                      child: Text('Continuar como visitante'),
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: presenter.navigateToSignUp,
              child: Text('Não tem uma conta? Registre-se'),
            ),
          ],
        ),
      ),
    );
  }
}
