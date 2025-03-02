import 'package:diocese_santos/presentation/presenters/rx/forgot_password_presenter.dart';
import 'package:diocese_santos/ui/pages/forgot_password_page.dart';
import 'package:flutter/material.dart';

Widget makeForgotPasswordPage() {
  final presenter = ForgotPasswordRxPresenter();
  return ForgotPasswordPage(presenter: presenter);
}
