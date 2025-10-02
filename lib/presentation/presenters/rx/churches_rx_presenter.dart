import 'package:diocese_santos/domain/entites/church.dart';
import 'package:diocese_santos/domain/entites/user.dart';
import 'package:diocese_santos/infra/storage/client/storage_client.dart';
import 'package:diocese_santos/presentation/presenters/churches_presenter.dart';
import 'package:rxdart/rxdart.dart';

class ChurchesRxPresenter implements ChurchesPresenter {
  final StorageClient storageClient;
  final Future<List<Church>> Function() churchesLoader;

  final churchesSubject = BehaviorSubject<ChurchesViewModel>.seeded(
    ChurchesViewModel.empty(),
  );
  final isBusySubject = BehaviorSubject<bool>();

  ChurchesRxPresenter({
    required this.storageClient,
    required this.churchesLoader,
  });

  @override
  Stream<ChurchesViewModel> get churchesStream => churchesSubject.stream;
  @override
  Stream<bool> get isBusyStream => isBusySubject.stream;

  @override
  Future<void> loadUserData() async {
    final user = storageClient.getString('user_id');
    churchesSubject.add(
      churchesSubject.value.copyWith(
        user: User(
          id: user,
          name: storageClient.getString('user_name'),
          email: storageClient.getString('user_email'),
          photoUrl: storageClient.getString('user_photo_url'),
        ),
      ),
    );
  }

  @override
  Future<void> listAllChurches() async {
    try {
      final churchs = await churchesLoader();
      churchesSubject.add(churchesSubject.value.copyWith(churches: churchs));
    } catch (error) {
      churchesSubject.addError(error);
    }
  }
}
