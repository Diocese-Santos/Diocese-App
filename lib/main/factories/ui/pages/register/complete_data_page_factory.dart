import 'package:diocese_santos/presentation/presenters/rx/register/complete_data_presenter.dart';
import 'package:diocese_santos/ui/pages/register/complete_data_page.dart';
import 'package:flutter/material.dart';

Widget makeRegisterCompleteDataPage() {
  final presenter = RegisterCompleteDataRxPresenter();
  return RegisterCompleteDataPage(presenter: presenter);
}
