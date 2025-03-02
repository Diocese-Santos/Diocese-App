import 'package:diocese_santos/ui/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/fakers.dart';

void main() {
  late Widget sut;
  late String title;
  late String text;

  setUp(() {
    title = anyString();
    text = anyString();
    sut = MaterialApp(
      home: Header(title: title, child: Text(text)),
    );
  });

  testWidgets('should show header widget with the correctly params',
      (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.byType(Header), findsOne);
    expect(find.text(title), findsOne);
    expect(find.text(text), findsOne);
  });
}
