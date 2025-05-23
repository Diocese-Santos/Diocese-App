import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    required this.child,
    this.title,
    this.padding,
    super.key,
  });

  final String? title;
  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return Container(
      width: double.infinity,
      padding: padding ??
          EdgeInsets.only(
            left: 24,
            top: 20 + statusBarHeight,
            right: 24,
            bottom: 40,
          ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/catedral_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
          ],
          child,
        ],
      ),
    );
  }
}
