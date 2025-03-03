import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    required this.tabController,
    required this.currentPageIndex,
    required this.onUpdateCurrentPageIndex,
    super.key,
  });

  final int currentPageIndex;
  final TabController tabController;
  final void Function(int) onUpdateCurrentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            if (currentPageIndex == 0) return;
            onUpdateCurrentPageIndex(currentPageIndex - 1);
          },
          icon: const Icon(
            Icons.chevron_left,
            size: 28,
            color: Color(0xff3173B9),
            weight: 900,
          ),
        ),
        TabPageSelector(
          controller: tabController,
          color: Colors.white.withAlpha(100),
          selectedColor: Colors.white,
          borderStyle: BorderStyle.none,
          indicatorSize: 10,
        ),
        IconButton(
          onPressed: () {
            if (currentPageIndex == 2) return;
            onUpdateCurrentPageIndex(currentPageIndex + 1);
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
