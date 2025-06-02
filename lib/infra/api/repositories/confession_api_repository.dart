import 'package:diocese_santos/domain/entites/event.dart';

final class ConfessionApiRepository {
  Future<List<Event>> loadConfession() async {
    Future.delayed(Duration(seconds: 1));
    return [
      Event(
        distance: '10 km',
        title: 'Paróquia São José Operário',
        endTime: '12:00',
        startTime: '10:00',
      ),
      Event(
        distance: '10 km',
        title: 'Paróquia Imaculado coração de Maria',
        endTime: '12:00',
        startTime: '10:00',
      ),
    ];
  }
}
