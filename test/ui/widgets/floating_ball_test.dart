import 'package:diocese_santos/ui/widgets/floating_ball.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Widget sut;
  late Color color;
  late Size size;
  late Duration duration;

  setUp(() {
    color = Colors.blue;
    size = const Size(50, 50);
    duration = const Duration(seconds: 1);
    sut = MaterialApp(
      home: FloatingBall(color: color, size: size, duration: duration),
    );
  });

  testWidgets('should render FloatingBall animates correctly', (tester) async {
    await tester.pumpWidget(sut);

    final floatingBall = find.byType(Transform);
    expect(floatingBall, findsOneWidget);

    await tester.pump(duration ~/ 2);

    final Transform transformBefore = tester.widget(floatingBall);
    final initialY = transformBefore.transform.getTranslation().y;

    await tester.pump(duration ~/ 2);

    final Transform transformAfter = tester.widget(floatingBall);
    final double finalY = transformAfter.transform.getTranslation().y;

    expect(initialY, isNot(finalY));
  });
}
