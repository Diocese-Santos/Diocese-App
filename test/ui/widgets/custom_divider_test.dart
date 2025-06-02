import 'package:diocese_santos/ui/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Widget sut;

  setUp(() {
    sut = MaterialApp(
      home: CustomDivider(),
    );
  });

  testWidgets('should render CustomDivider correctly', (tester) async {
    await tester.pumpWidget(sut);
    expect(find.byType(CustomDivider), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}
