import 'package:diocese_santos/domain/entites/church.dart';
import 'package:diocese_santos/domain/entites/event.dart';
import 'package:diocese_santos/domain/entites/liturgical_information.dart';
import 'package:diocese_santos/domain/entites/user.dart';
import 'package:diocese_santos/infra/storage/client/storage_client.dart';
import 'package:diocese_santos/presentation/presenters/home_presenter.dart';

import 'package:rxdart/subjects.dart';

class HomeRxPresenter implements HomePresenter {
  final Future<LiturgicalInformation> Function() liturgicalInformationsLoader;
  final Future<List<Church>> Function() churchsLoader;
  final Future<List<Event>> Function() confessionLoader;
  final Future<List<Event>> Function() massesLoader;
  final StorageClient storageClient;

  final homeSubject =
      BehaviorSubject<HomeViewModel>.seeded(HomeViewModel.empty());
  final isBusySubject = BehaviorSubject<bool>();

  HomeRxPresenter({
    required this.liturgicalInformationsLoader,
    required this.churchsLoader,
    required this.massesLoader,
    required this.confessionLoader,
    required this.storageClient,
  });

  @override
  Stream<HomeViewModel> get homeStream => homeSubject.stream;
  @override
  Stream<bool> get isBusyStream => isBusySubject.stream;

  @override
  Future<void> loadUserData() async {
    final user = storageClient.getString('user_id');
    homeSubject.add(homeSubject.value.copyWith(
        user: User(
      id: user,
      name: storageClient.getString('user_name'),
      email: storageClient.getString('user_email'),
      photoUrl: storageClient.getString('user_photo_url'),
    )));
  }

  @override
  Future<void> loadChurchs() async {
    try {
      final churchs = await churchsLoader();
      homeSubject.add(
        homeSubject.value.copyWith(churchs: _mapChurchs(churchs)),
      );
    } catch (error) {
      homeSubject.addError(error);
    }
  }

  @override
  Future<void> loadConfession() async {
    try {
      final confessions = await confessionLoader();
      homeSubject.add(
        homeSubject.value.copyWith(confession: _mapEvents(confessions)),
      );
    } catch (error) {
      homeSubject.addError(error);
    }
  }

  @override
  Future<void> loadMasses() async {
    try {
      final masses = await massesLoader();
      homeSubject.add(homeSubject.value.copyWith(masses: _mapEvents(masses)));
    } catch (error) {
      homeSubject.addError(error);
    }
  }

  @override
  Future<void> loadLiturgicalInformations() async {
    try {
      final liturgicalInformations = await liturgicalInformationsLoader();
      homeSubject.add(
        homeSubject.value.copyWith(
          liturgicalInformations:
              _mapLiturgicalInformations(liturgicalInformations),
        ),
      );
    } catch (error) {
      homeSubject.addError(error);
    }
  }

  ChurchViewModel _mapChurch(Church church) => ChurchViewModel(
        city: church.city,
        image: church.image,
        name: church.name,
      );
  List<ChurchViewModel> _mapChurchs(List<Church> church) =>
      church.map(_mapChurch).toList();

  EventViewModel _mapEvent(Event confession) => EventViewModel(
        distance: confession.distance,
        endTime: confession.endTime,
        startTime: confession.startTime,
        title: confession.title,
        celebrant: confession.celebrant,
      );
  List<EventViewModel> _mapEvents(List<Event> confessions) =>
      confessions.map(_mapEvent).toList();

  LiturgicalInformationsViewModel _mapLiturgicalInformations(
    LiturgicalInformation liturgicalInformation,
  ) =>
      LiturgicalInformationsViewModel(
        date: liturgicalInformation.date,
        week: liturgicalInformation.week,
        color: liturgicalInformation.color,
      );
}
