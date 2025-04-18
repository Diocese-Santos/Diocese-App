import 'package:diocese_santos/ui/widgets/upload_photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Widget sut;
  bool isTapped = false;

  setUp(() {
    sut = MaterialApp(
      home: Scaffold(
        body: UploadPhoto(
          onTap: () => isTapped = true,
        ),
      ),
    );
  });

  testWidgets('should call onTap when tapped', (tester) async {
    await tester.pumpWidget(sut);
    await tester.tap(find.byType(UploadPhoto));
    await tester.pump();
    expect(isTapped, true);
  });

  testWidgets('should have correct size', (tester) async {
    await tester.pumpWidget(sut);
    final size = tester.getSize(find.byType(UploadPhoto));
    expect(size.width, 220);
    expect(size.height, 220);
  });

  testWidgets('should have correct size when the size attribute is defined',
      (tester) async {
    final sut = MaterialApp(
      home: Scaffold(
        body: UploadPhoto(
          size: Size(20, 20),
        ),
      ),
    );
    await tester.pumpWidget(sut);
    final size = tester.getSize(find.byType(UploadPhoto));
    expect(size.width, 20);
    expect(size.height, 20);
  });
}
