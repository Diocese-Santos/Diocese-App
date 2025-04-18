import 'package:flutter/material.dart';

class UploadWidget extends StatelessWidget {
  const UploadWidget({
    super.key,
    this.size = const Size(220, 220),
    this.onTap,
  });

  final Size size;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
      child: CustomPaint(
        painter: _DashedCirclePainter(
          color: Colors.lightBlue.withValues(alpha: .6),
          strokeWidth: 2,
          dashLength: 8,
          gapLength: 5,
        ),
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
          ),
          child: Center(
            child: Icon(
              Icons.file_upload_outlined,
              size: 50,
              color: Colors.lightBlue.withValues(alpha: .2),
            ),
          ),
        ),
      ),
    );
  }
}

class _DashedCirclePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashLength;
  final double gapLength;

  _DashedCirclePainter({
    required this.color,
    required this.strokeWidth,
    required this.dashLength,
    required this.gapLength,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final radius = size.width / 2;
    final circumference = 2 * 3.141592653589793 * radius;
    final dashCount = (circumference / (dashLength + gapLength)).floor();
    final angleStep = (2 * 3.141592653589793) / dashCount;

    for (int i = 0; i < dashCount; i++) {
      final startAngle = i * angleStep;
      final endAngle = startAngle + (dashLength / radius);

      canvas.drawArc(
        Rect.fromCircle(center: size.center(Offset.zero), radius: radius),
        startAngle,
        endAngle - startAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
