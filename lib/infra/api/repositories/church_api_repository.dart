import 'package:diocese_santos/domain/entites/church.dart';
import 'package:diocese_santos/infra/api/client/baas_client.dart';

final class ChurchApiRepository {
  final BaaSClient client;

  ChurchApiRepository({required this.client});

  Future<List<Church>> listAllChurches() async {
    final data = await client.get('church');

    return data
        .map(
          (e) =>
              Church(name: e['name'], city: e['city'], image: e['image_url']),
        )
        .toList();
  }

  Future<List<Church>> loadChurchs() async {
    await Future.delayed(const Duration(seconds: 1));
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
