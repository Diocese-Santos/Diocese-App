import 'package:diocese_santos/domain/entites/church.dart';

final class ChurchApiRepository {
  Future<List<Church>> loadChurchs() async {
    Future.delayed(Duration(seconds: 1));
    return [
      Church(
        name: 'Igreja A',
        city: 'Santos',
        image:
            'https://www.diocesedesantos.com.br/images/paroquias/santo_antonio_do_embare.jpg',
      ),
      Church(
        name: 'Igreja B',
        city: 'Santos',
        image:
            'https://www.diocesedesantos.com.br/images/paroquias/Catedral-de-Santos-SP.jpg',
      ),
      Church(
        name: 'Igreja C',
        city: 'Peruíbe',
        image:
            'https://www.diocesedesantos.com.br/images/paroquias/Paroquia_Sao_Joao_Batista_-_Peruibe.jpg',
      ),
    ];
  }
}
