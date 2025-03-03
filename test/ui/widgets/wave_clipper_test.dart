import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:diocese_santos/ui/widgets/wave_clipper.dart';

void main() {
  test('should return a valid path', () {
    final clipper = WaveClipper();
    final size = const Size(100, 50);
    final path = clipper.getClip(size);

    expect(path, isNotNull);
    expect(path.computeMetrics().length, greaterThan(0));
  });

  test('should return the same path for the same size', () {
    final clipper1 = WaveClipper();
    final clipper2 = WaveClipper();
    final size = const Size(200, 100);

    final path1 = clipper1.getClip(size);
    final path2 = clipper2.getClip(size);

    expect(path1.getBounds(), equals(path2.getBounds()));
  });

  test('should not reclip', () {
    final clipper = WaveClipper();
    expect(clipper.shouldReclip(clipper), false);
  });
}
