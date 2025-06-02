import 'package:diocese_santos/ui/pages/home/widgets/daily_liturgy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Widget sut;

  setUp(() {
    sut = MaterialApp(home: DailyLiturgy());
  });

  testWidgets('DailyLiturgy widget renders correctly', (tester) async {
    await tester.pumpWidget(sut);

    expect(find.text('Liturgia Diária'), findsOneWidget);
    expect(find.byType(OutlinedButton), findsOneWidget);
    expect(find.byIcon(Icons.open_in_new), findsOneWidget);
  });
}
