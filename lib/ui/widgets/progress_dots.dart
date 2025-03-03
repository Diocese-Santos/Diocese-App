import 'package:flutter/material.dart';

class ProgressDots extends StatelessWidget {
  const ProgressDots({
    required this.activeIndex,
    super.key,
  });

  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == activeIndex ? Colors.white : Colors.blue[200],
            ),
          ),
        );
      }),
    );
  }
}
