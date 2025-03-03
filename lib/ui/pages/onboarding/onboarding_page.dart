import 'package:diocese_santos/presentation/presenters/onboarding_presenter.dart';
import 'package:diocese_santos/ui/pages/onboarding/widgets/onboarding_floating_balls.dart';
import 'package:diocese_santos/ui/widgets/page_indicator.dart';
import 'package:diocese_santos/ui/widgets/wave_clipper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({required this.presenter, super.key});

  final OnboardingPresenter presenter;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(child: Container()),
              ClipPath(
                clipper: WaveClipper(),
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.6,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          colors: [Colors.lightBlue, Colors.blue],
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/catedral.jpg',
                      height: size.height * 0.6,
                      fit: BoxFit.cover,
                      opacity: const AlwaysStoppedAnimation(0.07),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ...buildOnboardingFloatingBalls(),
          PageView(
            onPageChanged: presenter.onChangedSlide,
            controller: presenter.pageViewController,
            children: [
              OnboardingSlide(
                image: 'assets/onboarding_1.png',
                title: 'Bem-vindo!',
                description:
                    'Localize em tempo real, paróquias, horários de missas e tenha informações da Diocese de Santos na palma da mão.',
              ),
              OnboardingSlide(
                image: 'assets/onboarding_2.png',
                title: 'Encontre tudo!',
                description:
                    'Encontre com facilidade: paróquias, comunidades, missas e confissões próximas, e até rotas para as igrejas!',
              ),
              OnboardingSlide(
                image: 'assets/onboarding_3.png',
                title: 'Ao diocesano',
                description:
                    'Uma experiência especial para diocesanos inscritos: Favorite paróquias, receba notificações, e muito mais... Descubra!',
              ),
            ],
          ),
          Column(
            children: [
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 80,
                ),
                child: StreamBuilder(
                  stream: presenter.currentPage,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return const SizedBox.shrink();

                    return PageIndicator(
                      currentPageIndex: snapshot.data!,
                      onPreviousSlide: () =>
                          presenter.handleChangeSlide(snapshot.data! - 1),
                      onNextSlide: () =>
                          presenter.handleChangeSlide(snapshot.data! + 1),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OnboardingSlide extends StatelessWidget {
  const OnboardingSlide({
    required this.image,
    required this.title,
    required this.description,
    super.key,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Gap(36),
        SizedBox(
          height: size.height * 0.4,
          child: Image.asset(image),
        ),
        Gap(48),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        Gap(24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ],
    );
  }
}
