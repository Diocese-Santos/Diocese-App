import 'package:diocese_santos/domain/entites/event.dart';

final class MassesApiRepository {
  Future<List<Event>> loadMasses() async {
    Future.delayed(Duration(seconds: 1));
    return [
      Event(
        distance: '10 km',
        title: 'Missa de Domingo',
        endTime: '12:00',
        startTime: '10:00',
        celebrant: 'Padre João',
      ),
      Event(
        distance: '10 km',
        title: 'Missa de Sábado',
        endTime: '12:00',
        startTime: '10:00',
        celebrant: 'Padre Thiago Ferauche',
      ),
      Event(
        distance: '10 km',
        title: 'Missa de Sexta',
        endTime: '15:00',
        startTime: '13:00',
        celebrant: 'Padre Apolinário',
      ),
    ];
  }
}
