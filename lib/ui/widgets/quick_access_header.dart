import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuickAccessHeader extends StatelessWidget {
  const QuickAccessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _ConfissionButon(
              title: 'Agenda',
              imagePath: 'assets/agenda.png',
              onPressed: () {},
            ),
            _ConfissionButon(
              title: 'Missas',
              imagePath: 'assets/eucharist.png',
              onPressed: () {},
            ),
            _ConfissionButon(
              title: 'Histório',
              imagePath: 'assets/history_book.png',
              onPressed: () {},
            ),
          ],
        ),
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

    final buttonWidth = (screenWidth / 3) - totalPadding;

    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        fixedSize: Size(buttonWidth, 92),
        side: BorderSide(color: Colors.transparent),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 32,
            height: 32,
          ),
          Gap(8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w600,
                ),
          )
        ],
      ),
    );
  }
}
