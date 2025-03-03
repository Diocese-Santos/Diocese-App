import 'package:diocese_santos/presentation/presenters/onboarding_presenter.dart';
import 'package:diocese_santos/ui/pages/onboarding/widgets/onboarding_background.dart';
import 'package:diocese_santos/ui/pages/onboarding/widgets/onboarding_floating_balls.dart';
import 'package:diocese_santos/ui/pages/onboarding/widgets/onboarding_slide.dart';
import 'package:diocese_santos/ui/pages/onboarding/widgets/onboarding_slide_indicator.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({required this.presenter, super.key});

  final OnboardingPresenter presenter;

  @override
  Widget build(BuildContext context) {
    const slides = [
      {
        'image': 'assets/onboarding_1.png',
        'title': 'Bem-vindo!',
        'description':
            'Localize em tempo real, paróquias, horários de missas e tenha informações da Diocese de Santos na palma da mão.',
      },
      {
        'image': 'assets/onboarding_2.png',
        'title': 'Encontre tudo!',
        'description':
            'Encontre com facilidade: paróquias, comunidades, missas e confissões próximas, e até rotas para as igrejas!',
      },
      {
        'image': 'assets/onboarding_3.png',
        'title': 'Ao diocesano',
        'description':
            'Uma experiência especial para diocesanos inscritos: Favorite paróquias, receba notificações, e muito mais... Descubra!',
      },
    ];

    return Scaffold(
      body: Stack(
        children: [
          OnboardingBackground(),
          ...buildOnboardingFloatingBalls(),
          PageView(
            onPageChanged: presenter.onChangedSlide,
            controller: presenter.pageViewController,
            children: List.generate(slides.length, (index) {
              final slide = slides[index];
              return OnboardingSlide(
                image: slide['image']!,
                title: slide['title']!,
                description: slide['description']!,
              );
            }),
          ),
          OnboardingSlideIndicator(
            presenter: presenter,
            slidesLength: slides.length,
          ),
        ],
      ),
    );
  }
}
