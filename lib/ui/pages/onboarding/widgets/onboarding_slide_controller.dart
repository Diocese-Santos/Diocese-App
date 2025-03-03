import 'package:diocese_santos/ui/pages/onboarding/widgets/onboarding_choice.dart';
import 'package:diocese_santos/ui/widgets/progress_dots.dart';
import 'package:flutter/material.dart';

class OnboardingSlideController extends StatelessWidget {
  const OnboardingSlideController({
    required this.currentPageIndex,
    required this.onPreviousSlide,
    required this.onNextSlide,
    required this.slidesLength,
    super.key,
  });

  final int currentPageIndex;
  final void Function() onPreviousSlide;
  final void Function() onNextSlide;

  final int slidesLength;

  @override
  Widget build(BuildContext context) {
    final isFirstSlide = currentPageIndex == 0;
    final isLastSlide = currentPageIndex == slidesLength - 1;

    final size = MediaQuery.sizeOf(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            if (isFirstSlide) return;
            onPreviousSlide();
          },
          icon: const Icon(
            Icons.chevron_left,
            size: 28,
            weight: 900,
            color: Color(0xff3173B9),
          ),
        ),
        ProgressDots(activeIndex: currentPageIndex),
        AnimatedRotation(
          duration: const Duration(milliseconds: 200),
          turns: isLastSlide ? -0.25 : 0, // 0.25 == 90deg
          child: IconButton(
            onPressed: () {
              if (isLastSlide) {
                showBottomSheet(
                  context: context,
                  showDragHandle: true,
                  constraints: BoxConstraints(
                    maxHeight: size.height * 0.5,
                    minWidth: size.width,
                  ),
                  builder: (context) => OnboardingChoice(),
                );
                return;
              }
              onNextSlide();
            },
            icon: const Icon(
              Icons.chevron_right,
              size: 28,
              weight: 900,
              color: Color(0xff3173B9),
            ),
          ),
        ),
      ],
    );
  }
}
