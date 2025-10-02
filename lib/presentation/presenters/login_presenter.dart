import 'package:diocese_santos/domain/entites/user.dart';

abstract class LoginPresenter {
  Stream<LoginViewModel> get loginStream;
  Stream<bool> get isBusyStream;

  void signIn();
  Future<void> authenticateWithGoogle();
}

final class LoginViewModel {
  final User user;

  const LoginViewModel({required this.user});

  factory LoginViewModel.empty() => LoginViewModel(user: User.empty());

  LoginViewModel copyWith({User? user}) =>
      LoginViewModel(user: user ?? this.user);
}
