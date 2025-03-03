import 'package:diocese_santos/presentation/presenters/onboarding_presenter.dart';
import 'package:diocese_santos/ui/pages/onboarding/widgets/onboarding_slide_controller.dart';
import 'package:flutter/material.dart';

class OnboardingSlideIndicator extends StatelessWidget {
  const OnboardingSlideIndicator({
    required this.presenter,
    required this.slidesLength,
    super.key,
  });

  final OnboardingPresenter presenter;
  final int slidesLength;

  @override
  Widget build(BuildContext context) {
    return Column(
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

              return OnboardingSlideController(
                slidesLength: slidesLength,
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
    );
  }
}
