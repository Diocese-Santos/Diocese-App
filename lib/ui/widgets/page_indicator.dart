import 'package:diocese_santos/ui/widgets/progress_dots.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    required this.currentPageIndex,
    required this.onPreviousSlide,
    required this.onNextSlide,
    super.key,
  });

  final int currentPageIndex;
  final void Function() onPreviousSlide;
  final void Function() onNextSlide;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            if (currentPageIndex == 0) return;
            onPreviousSlide();
          },
          icon: const Icon(
            Icons.chevron_left,
            size: 28,
            color: Color(0xff3173B9),
            weight: 900,
          ),
        ),
        ProgressDots(activeIndex: currentPageIndex),
        IconButton(
          onPressed: () {
            if (currentPageIndex == 2) return;
            onNextSlide();
          },
          icon: const Icon(
            Icons.chevron_right,
            size: 28,
            color: Color(0xff3173B9),
            weight: 900,
          ),
        ),
      ],
    );
  }
}
