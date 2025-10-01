import 'dart:async';

import 'package:diocese_santos/presentation/presenters/login_presenter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginRxPresenter implements LoginPresenter {
  @override
  void signIn() {}

  @override
  Future<void> signInWithGoogle() async {
    final googleUser = await GoogleSignIn.instance.authenticate();

    if (googleUser != null) {
      print(googleUser.id);
      print(googleUser.email);
      print(googleUser.displayName);
      print(googleUser.photoUrl);
    }
  }
}
