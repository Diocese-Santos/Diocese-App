import 'package:diocese_santos/infra/api/repositories/church_api_repository.dart';
import 'package:diocese_santos/main/factories/infra/api/adapters/firebase_adapter_factory.dart';

ChurchApiRepository makeChurchsApiRepository() {
  return ChurchApiRepository(client: makeFirebaseAdapter());
}
