import 'package:diocese_santos/ui/widgets/floating_ball.dart';
import 'package:flutter/material.dart';

List<Widget> buildOnboardingFloatingBalls() {
  return [
    Positioned(
      right: 80,
      top: -20,
      child: FloatingBall(
        color: Color(0xffBDDCF3),
        size: const Size(62, 62),
        duration: const Duration(seconds: 6),
      ),
    ),
    Positioned(
      right: 40,
      top: 80,
      child: FloatingBall(
        color: Color(0xffE2AA50),
        size: const Size(14, 14),
        duration: const Duration(seconds: 3),
      ),
    ),
    Positioned(
      left: 125,
      top: 80,
      child: FloatingBall(
        color: Color(0xffD57E0E),
        size: const Size(20, 20),
        duration: const Duration(seconds: 4),
      ),
    ),
    Positioned(
      left: -30,
      top: 80,
      child: FloatingBall(
        color: Color(0xffE2AA50),
        size: const Size(62, 62),
        duration: const Duration(seconds: 5),
      ),
    ),
    Positioned(
      left: 15,
      top: 300,
      child: FloatingBall(
        color: Color(0xff95C7EB),
        size: const Size(20, 20),
        duration: const Duration(seconds: 3, milliseconds: 600),
      ),
    ),
    Positioned(
      right: 125,
      top: 320,
      child: FloatingBall(
        color: Colors.orangeAccent,
        size: const Size(14, 14),
        duration: const Duration(seconds: 3),
      ),
    ),
    Positioned(
      right: 20,
      top: 320,
      child: FloatingBall(
        color: Color(0xffF2DAB2),
        size: const Size(8, 8),
        duration: const Duration(seconds: 5),
      ),
    ),
    Positioned(
      right: -30,
      top: 180,
      child: FloatingBall(
        color: Color(0xffF2DAB2),
        size: const Size(62, 62),
        duration: const Duration(seconds: 4, milliseconds: 800),
      ),
    ),
    Positioned(
      left: 60,
      top: 100,
      child: FloatingBall(
        color: Color(0xff95C7EB),
        size: const Size(8, 8),
        duration: const Duration(seconds: 2, milliseconds: 800),
      ),
    ),
    Positioned(
      left: 100,
      top: 250,
      child: FloatingBall(
        color: Color(0xff70B1E2),
        size: const Size(8, 8),
        duration: const Duration(seconds: 4, milliseconds: 100),
      ),
    ),
  ];
}
