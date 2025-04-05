import 'package:diocese_santos/presentation/presenters/rx/register/basic_data_presenter.dart';
import 'package:diocese_santos/ui/pages/register/basic_data_page.dart';
import 'package:flutter/material.dart';

Widget makeRegisterBasicDataPage() {
  final presenter = RegisterBasicDataRxPresenter();
  return RegisterBasicDataPage(presenter: presenter);
}
