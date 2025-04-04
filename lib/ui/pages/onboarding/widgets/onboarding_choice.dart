import 'package:diocese_santos/main/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class OnboardingChoice extends StatelessWidget {
  const OnboardingChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Column(
        children: [
          Text(
            'Escolha como deseja continuar:',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w600,
                ),
          ),
          Gap(32),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: FilledButton(
              onPressed: () => context.go(Routes.home),
              child: Text(
                'Login',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          Gap(16),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => context.go(Routes.registerBasicData),
              child: Text(
                'Criar conta',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          Gap(16),
          TextButton(
            onPressed: () => context.go(Routes.home),
            child: Text(
              'Continuar como visitante',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.orange,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
