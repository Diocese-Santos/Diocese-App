import 'package:diocese_santos/main/routing/routes.dart';
import 'package:diocese_santos/presentation/presenters/complete_data_presenter.dart';
import 'package:diocese_santos/ui/widgets/header.dart';
import 'package:diocese_santos/ui/widgets/page_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class RegisterCompleteDataPage extends StatelessWidget {
  const RegisterCompleteDataPage({required this.presenter, super.key});

  final RegisterCompleteDataPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      isAFormPage: true,
      children: [
        Header(
          title: 'Falta pouco',
          child: Text(
            'Insira dados adicionais para uma melhor experiência',
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
                  'Data de Nascimento',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.grey.shade600,
                      ),
                ),
                Gap(12),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'dd/mm/aaaa',
                    prefixIcon: Icon(Icons.cake_outlined),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                Gap(16),
                Text(
                  'Cidade',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.grey.shade600,
                      ),
                ),
                Gap(12),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Selecione sua cidade',
                    prefixIcon: Icon(Icons.home_work_outlined),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                Gap(16),
                Text(
                  'Paróquia',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.grey.shade600,
                      ),
                ),
                Gap(12),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Selecione sua paróquia',
                    prefixIcon: Icon(Icons.church_outlined),
                  ),
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
                          context.go(Routes.registerCompleteData),
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
                onPressed: () => context.go(Routes.home),
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
