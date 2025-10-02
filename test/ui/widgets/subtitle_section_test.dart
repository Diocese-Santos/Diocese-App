import 'package:diocese_santos/ui/widgets/subtitle_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Widget sut;
  late String title = "Subtitle Section Test";

  setUp(() {
    sut = MaterialApp(home: SubtitleSection(title: title));
  });

  testWidgets('should render SubtitleSection correctly', (tester) async {
    await tester.pumpWidget(sut);
    expect(find.byType(SubtitleSection), findsOneWidget);
    expect(find.text(title), findsOneWidget);
  });
}
