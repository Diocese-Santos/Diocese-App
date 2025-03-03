import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);

    path.quadraticBezierTo(
      size.width * 0.2,
      size.height * 0.10,
      size.width * 0.5,
      size.height * 0.06,
    );
    path.quadraticBezierTo(
      size.width * 0.8,
      10,
      size.width,
      size.height * 0.04,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
