import 'package:diocese_santos/presentation/presenters/rx/home_rx_presenter.dart';
import 'package:diocese_santos/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';

final presenter = HomeRxPresenter();

Widget makeHomePage() {
  return HomePage(presenter: presenter);
}
