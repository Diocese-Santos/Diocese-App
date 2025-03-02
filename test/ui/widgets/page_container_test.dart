import 'package:diocese_santos/ui/widgets/page_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('should renders PageContainer children correctly',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: PageContainer(
          children: [
            Text('Child 1'),
            Text('Child 2'),
          ],
        ),
      ),
    );

    expect(find.text('Child 1'), findsOneWidget);
    expect(find.text('Child 2'), findsOneWidget);
  });

  testWidgets(
      'should render PageContainer wraps children in a Form when isAFormPage is true',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: PageContainer(
          isAFormPage: true,
          children: [
            TextFormField(key: Key('input_field')),
          ],
        ),
      ),
    );

    expect(find.byType(Form), findsOneWidget);
    expect(find.byKey(Key('input_field')), findsOneWidget);
  });

  testWidgets(
      'should renter PageContainer does not wrap children in a Form when isAFormPage is false',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: PageContainer(
          isAFormPage: false,
          children: [
            TextFormField(key: Key('input_field')),
          ],
        ),
      ),
    );

    expect(find.byType(Form), findsNothing);
    expect(find.byKey(Key('input_field')), findsOneWidget);
  });

  testWidgets('should render PageContainer allows scrolling', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: PageContainer(
          children: List.generate(
            50,
            (index) => Text('Item $index', key: Key('item_$index')),
          ),
        ),
      ),
    );

    final scrollable = find.byType(Scrollable);
    expect(scrollable, findsOneWidget);
  });
}
