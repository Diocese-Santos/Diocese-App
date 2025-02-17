import 'package:diocese_santos/presentation/presenters/forgot_password.dart';
import 'package:diocese_santos/ui/widgets/header.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({
    required this.presenter,
    super.key,
  });

  final ForgotPasswordPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return Header(
      title: 'Recuperar senha',
      child: Text(
        'Insira seu email para resetar sua senha',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.white70,
            ),
      ),
    );
  }
}
