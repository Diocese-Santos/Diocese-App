import 'package:diocese_santos/domain/entites/user.dart';

abstract class HomePresenter {
  Stream<HomeViewModel> get homeStream;
  Stream<bool> get isBusyStream;

  Future<void> loadLiturgicalInformations();
  Future<void> loadChurchs();
  Future<void> loadMasses();
  Future<void> loadConfession();

  Future<void> loadUserData();
}

final class HomeViewModel {
  final User user;

  final LiturgicalInformationsViewModel liturgicalInformations;
  final List<ChurchViewModel> churchs;
  final List<EventViewModel> masses;
  final List<EventViewModel> confession;

  const HomeViewModel({
    required this.user,
    required this.liturgicalInformations,
    required this.churchs,
    required this.confession,
    required this.masses,
  });

  factory HomeViewModel.empty() => HomeViewModel(
        user: User.empty(),
        churchs: [],
        masses: [],
        confession: [],
        liturgicalInformations: const LiturgicalInformationsViewModel(
          date: '',
          week: '',
          color: '',
        ),
      );

  HomeViewModel copyWith({
    LiturgicalInformationsViewModel? liturgicalInformations,
    List<ChurchViewModel>? churchs,
    List<EventViewModel>? masses,
    List<EventViewModel>? confession,
    User? user,
  }) {
    return HomeViewModel(
      user: user ?? this.user,
      liturgicalInformations:
          liturgicalInformations ?? this.liturgicalInformations,
      churchs: churchs ?? this.churchs,
      masses: masses ?? this.masses,
      confession: confession ?? this.confession,
    );
  }
}

final class LiturgicalInformationsViewModel {
  final String date;
  final String week;
  final String color;

  const LiturgicalInformationsViewModel({
    required this.date,
    required this.week,
    required this.color,
  });
}

final class ChurchViewModel {
  final String name;
  final String city;
  final String image;

  const ChurchViewModel({
    required this.name,
    required this.city,
    required this.image,
  });
}

final class EventViewModel {
  final String title;
  final String startTime;
  final String endTime;
  final String distance;
  final String? celebrant;

  const EventViewModel({
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.distance,
    this.celebrant,
  });
}
