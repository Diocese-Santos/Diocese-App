import 'package:diocese_santos/ui/widgets/progress_dots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('should render with the default number of dots', (tester) async {
    await tester.pumpWidget(
      MaterialApp(home: ProgressDots(activeIndex: 1)),
    );
    expect(find.byType(Container), findsNWidgets(3));
  });

  testWidgets('should render highlighting the correct dot', (tester) async {
    await tester.pumpWidget(
      MaterialApp(home: ProgressDots(activeIndex: 1)),
    );

    expect(find.byType(Container), findsNWidgets(3));
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Container &&
            (widget.decoration as BoxDecoration?)?.color == Colors.white,
      ),
      findsOneWidget,
    );
  });

  testWidgets('should render with the custom number of dots', (tester) async {
    await tester.pumpWidget(
      MaterialApp(home: ProgressDots(activeIndex: 2, numberOfDots: 5)),
    );
    expect(find.byType(Container), findsNWidgets(5));
  });

  testWidgets('should render with the correct color for non-active dots',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ProgressDots(activeIndex: 2),
      ),
    );

    final inactiveDots = find.byWidgetPredicate(
      (widget) =>
          widget is Container &&
          (widget.decoration as BoxDecoration?)?.color == Colors.blue[200],
    );
    expect(find.byType(Container), findsNWidgets(3));
    expect(inactiveDots, findsNWidgets(2));
  });

  testWidgets(
      'should render correctly highlights active dot based on activeIndex',
      (tester) async {
    const activeIndex = 2;
    const numberOfDots = 5;

    await tester.pumpWidget(
      const MaterialApp(
        home: ProgressDots(
          activeIndex: activeIndex,
          numberOfDots: numberOfDots,
        ),
      ),
    );

    final dots = tester.widgetList<Container>(find.byType(Container)).toList();

    for (var i = 0; i < dots.length; i++) {
      final dotColor = (dots[i].decoration as BoxDecoration?)?.color;
      final expectedColor = i == activeIndex ? Colors.white : Colors.blue[200];
      expect(dotColor, expectedColor);
    }
  });
}
