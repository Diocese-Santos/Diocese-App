import 'package:diocese_santos/domain/entites/church.dart';
import 'package:diocese_santos/infra/api/client/baas_client.dart';

final class ChurchApiRepository {
  final BaaSClient client;

  ChurchApiRepository({required this.client});

  Future<List<Church>> listAllChurches() async {
    final data = await client.get('church');

    return data
        .map(
          (e) => Church(
            id: e['id'],
            name: e['name'],
            city: e['city'],
            image: e['image_url'],
            favoriteUsers:
                (e['favorite_users'] as List<dynamic>?)
                    ?.map((e) => e.toString())
                    .toList() ??
                [],
          ),
        )
        .toList();
  }

  Future<List<Church>> loadChurchs() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      Church(
        id: '1',
        name: 'Igreja A',
        city: 'Santos',
        image:
            'https://www.diocesedesantos.com.br/images/paroquias/santo_antonio_do_embare.jpg',
        favoriteUsers: [],
      ),
      Church(
        id: '2',
        name: 'Igreja B',
        city: 'Santos',
        image:
            'https://www.diocesedesantos.com.br/images/paroquias/Catedral-de-Santos-SP.jpg',
        favoriteUsers: [],
      ),
      Church(
        id: '3',
        name: 'Igreja C',
        city: 'Peruíbe',
        image:
            'https://www.diocesedesantos.com.br/images/paroquias/Paroquia_Sao_Joao_Batista_-_Peruibe.jpg',
        favoriteUsers: [],
      ),
    ];
  }
}
