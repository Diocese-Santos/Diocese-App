import 'package:diocese_santos/main/routing/routes.dart';
import 'package:diocese_santos/presentation/presenters/basic_data_presenter.dart';
import 'package:diocese_santos/ui/widgets/header.dart';
import 'package:diocese_santos/ui/widgets/page_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class RegisterBasicDataPage extends StatelessWidget {
  const RegisterBasicDataPage({required this.presenter, super.key});

  final RegisterBasicDataPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      isAFormPage: true,
      children: [
        Header(
          title: 'Criar Conta',
          child: Text(
            'Insira seus dados e crie sua conta',
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
                  'Nome',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.grey.shade600,
                      ),
                ),
                Gap(12),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Seu nome completo',
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                Gap(16),
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
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 32,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 48,
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    presenter.next(
                      redirectCallback: () =>
                          context.push(Routes.registerCompleteData),
                    );
                  },
                  child: Text(
                    'Próximo',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Gap(14),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Continuar como visitante',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Gap(38),
              TextButton(
                onPressed: () => context.go(Routes.login),
                child: Text.rich(
                  TextSpan(
                    text: "Já tem uma conta? ",
                    style: TextStyle(color: Colors.grey.shade500),
                    children: [
                      TextSpan(
                        text: "Faça login",
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
