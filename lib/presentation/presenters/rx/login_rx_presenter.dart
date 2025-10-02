import 'dart:async';

import 'package:diocese_santos/domain/entites/user.dart';
import 'package:diocese_santos/presentation/presenters/login_presenter.dart';

import 'package:rxdart/subjects.dart';

class LoginRxPresenter implements LoginPresenter {
  final Future<User> Function() signInWithGoogle;

  final loginSubject =
      BehaviorSubject<LoginViewModel>.seeded(LoginViewModel.empty());
  final isBusySubject = BehaviorSubject<bool>();

  LoginRxPresenter({required this.signInWithGoogle});

  @override
  Stream<LoginViewModel> get loginStream => loginSubject.stream;
  @override
  Stream<bool> get isBusyStream => isBusySubject.stream;

  @override
  void signIn() {}

  @override
  Future<void> authenticateWithGoogle() async {
    isBusySubject.add(true);

    try {
      final googleUser = await signInWithGoogle();

      loginSubject.add(loginSubject.value.copyWith(
          user: User(
        id: googleUser.id,
        name: googleUser.name,
        email: googleUser.email,
        photoUrl: googleUser.photoUrl,
      )));
    } catch (e) {
      loginSubject.addError(e);
      isBusySubject.add(false);
    }
  }
}
