import 'package:diocese_santos/domain/entites/user.dart';

abstract class ChurchesPresenter {
  Stream<ChurchesViewModel> get churchesStream;
  Stream<bool> get isBusyStream;

  Future<void> loadUserData();
}

final class ChurchesViewModel {
  final User user;

  const ChurchesViewModel({required this.user});

  factory ChurchesViewModel.empty() => ChurchesViewModel(user: User.empty());

  ChurchesViewModel copyWith({User? user}) =>
      ChurchesViewModel(user: user ?? this.user);
}
