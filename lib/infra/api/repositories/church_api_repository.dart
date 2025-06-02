import 'package:diocese_santos/domain/entites/church.dart';

final class ChurchApiRepository {
  Future<List<Church>> loadChurchs() async {
    Future.delayed(Duration(seconds: 1));
    return [
      Church(
        name: 'Igreja A',
        city: 'Santos',
        image: '123',
      )
    ];
  }
}
