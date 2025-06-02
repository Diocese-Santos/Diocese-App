import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Image.asset(
        'assets/divider.png',
        width: MediaQuery.of(context).size.width,
        height: 24,
        fit: BoxFit.cover,
      ),
    );
  }
}
