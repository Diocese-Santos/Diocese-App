import 'package:diocese_santos/presentation/presenters/rx/onboarding_rx_presenter.dart';
import 'package:diocese_santos/ui/pages/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

Widget makeOnboardingPage() {
  final presenter = OnboardingRxPresenter();
  return OnboardingPage(presenter: presenter);
}
