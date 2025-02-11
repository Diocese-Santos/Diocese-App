import 'package:diocese_santos/presentation/presenters/rx/login_rx_presenter.dart';
import 'package:diocese_santos/ui/pages/login_page.dart';
import 'package:flutter/material.dart';

Widget makeLoginPage() {
  final presenter = LoginRxPresenter();
  return LoginPage(presenter: presenter);
}
