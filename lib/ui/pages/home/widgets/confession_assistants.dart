import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ConfessionAssistants extends StatelessWidget {
  const ConfessionAssistants({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _ConfissionButon(
            title: 'Exame de\nconsciência',
            imagePath: 'assets/pray.png',
            onPressed: () {},
          ),
          _ConfissionButon(
            title: 'Sobre a\nConfissão',
            imagePath: 'assets/book.png',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _ConfissionButon extends StatelessWidget {
  const _ConfissionButon({
    required this.title,
    required this.onPressed,
    required this.imagePath,
  });

  final String title;
  final Function()? onPressed;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    const horizontalPadding = 16.0;
    const gapBetweenButtons = 8.0;
    const totalPadding = horizontalPadding + gapBetweenButtons;

    final buttonWidth = (screenWidth / 2) - totalPadding;

    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        fixedSize: Size(buttonWidth, 72),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.grey.shade600,
                ),
          ),
          Gap(14),
          Image.asset(
            imagePath,
            width: 28,
            height: 28,
          ),
        ],
      ),
    );
  }
}
