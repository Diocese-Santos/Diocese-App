import 'package:diocese_santos/main/routing/routes.dart';
import 'package:diocese_santos/presentation/presenters/upload_photo_presenter.dart';
import 'package:diocese_santos/ui/widgets/header.dart';
import 'package:diocese_santos/ui/widgets/page_container.dart';
import 'package:diocese_santos/ui/widgets/upload_photo.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class RegisterUploadPhotoPage extends StatelessWidget {
  const RegisterUploadPhotoPage({required this.presenter, super.key});

  final RegisterUploadPhotoPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      isAFormPage: true,
      children: [
        Header(
          title: 'Foto',
          child: Text(
            'Insira uma foto sua para ser mostrado no seu perfil',
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(40),
                UploadPhoto(),
                Gap(24),
                Text(
                  'Henrique Martins',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Gap(4),
                Text(
                  'hmartins224@gmail.com',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.grey.shade500,
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
                  onPressed: presenter.uploadPhoto,
                  child: Text(
                    'Criar Conta',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
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
