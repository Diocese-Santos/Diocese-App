import 'package:diocese_santos/presentation/presenters/forgot_password.dart';
import 'package:diocese_santos/ui/widgets/header.dart';
import 'package:diocese_santos/ui/widgets/page_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({
    required this.presenter,
    super.key,
  });

  final ForgotPasswordPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      isAFormPage: true,
      children: [
        Header(
          title: 'Recuperar senha',
          child: Text(
            'Insira seu email para resetar sua senha',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white70,
                ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'E-mail',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.grey.shade600,
                      ),
                ),
                const Gap(12),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Seu e-mail',
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: 48,
                width: double.infinity,
                child: FilledButton(
                  onPressed: presenter.handleRecoveryPassword,
                  child: Text(
                    'Recuperar',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              const Gap(14),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: context.pop,
                  child: Text(
                    'Cancelar',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              const Gap(14),
            ],
          ),
        ),
      ],
    );
  }
}
