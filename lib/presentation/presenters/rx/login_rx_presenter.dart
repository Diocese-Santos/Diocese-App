import 'dart:async';

import 'package:diocese_santos/domain/entites/user.dart';
import 'package:diocese_santos/presentation/presenters/login_presenter.dart';

class LoginRxPresenter implements LoginPresenter {
  final Future<User> Function() signInWithGoogle;

  LoginRxPresenter({required this.signInWithGoogle});

  @override
  void signIn() {}

  @override
  Future<void> authenticateWithGoogle() async {
    final googleUser = await signInWithGoogle();

    if (googleUser != null) {
      print(googleUser.id);
      print(googleUser.email);
      print(googleUser.name);
      print(googleUser.photoUrl);
    }
  }
}
