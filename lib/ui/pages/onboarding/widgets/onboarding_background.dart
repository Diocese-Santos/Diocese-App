import 'package:diocese_santos/ui/widgets/wave_clipper.dart';
import 'package:flutter/material.dart';

class OnboardingBackground extends StatelessWidget {
  const OnboardingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(
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
    );
  }
}
