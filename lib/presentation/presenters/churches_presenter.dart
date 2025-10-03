import 'package:diocese_santos/domain/entites/church.dart';
import 'package:diocese_santos/domain/entites/user.dart';

abstract class ChurchesPresenter {
  Stream<ChurchesViewModel> get churchesStream;
  Stream<bool> get isBusyStream;

  Future<void> loadUserData();

  Future<void> listAllChurches();
  Future<void> toggleFavoriteChurch(String id, bool isAlreadyFavorite);
}

final class ChurchesViewModel {
  final User user;
  final List<Church> churches;

  const ChurchesViewModel({required this.user, required this.churches});

  factory ChurchesViewModel.empty() =>
      ChurchesViewModel(user: User.empty(), churches: []);

  ChurchesViewModel copyWith({User? user, List<Church>? churches}) =>
      ChurchesViewModel(
        user: user ?? this.user,
        churches: churches ?? this.churches,
      );
}
