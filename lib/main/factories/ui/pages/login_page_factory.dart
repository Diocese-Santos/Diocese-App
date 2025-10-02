import 'package:diocese_santos/main/factories/infra/sso/adapters/google_sign_in_factory.dart';
import 'package:diocese_santos/presentation/presenters/rx/login_rx_presenter.dart';
import 'package:diocese_santos/ui/pages/login_page.dart';
import 'package:flutter/material.dart';

final ssoClient = makeGoogleSignInAdapter();

Widget makeLoginPage() {
  final presenter =
      LoginRxPresenter(signInWithGoogle: ssoClient.signInWithGoogle);
  return LoginPage(presenter: presenter);
}
