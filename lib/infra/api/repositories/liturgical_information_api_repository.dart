import 'package:diocese_santos/domain/entites/liturgical_information.dart';

final class LiturgicalInformationApiRepository {
  Future<LiturgicalInformation> loadLiturgicalInformation() async {
    await Future.delayed(Duration(seconds: 1));
    return LiturgicalInformation(
      week: '3ª Semana da Quaresma',
      date: 'SEG., 04 MAR',
      color: 'Roxo',
    );
  }
}
