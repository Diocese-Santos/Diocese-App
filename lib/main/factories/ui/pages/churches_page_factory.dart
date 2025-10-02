import 'package:diocese_santos/presentation/presenters/rx/churches_rx_presenter.dart';
import 'package:diocese_santos/ui/pages/churches/churches_page.dart';
import 'package:flutter/material.dart';

final presenter = ChurchesRxPresenter();

Widget makeChurchesPage() => ChurchesPage(presenter: presenter);
