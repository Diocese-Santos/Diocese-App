import 'package:diocese_santos/presentation/presenters/onboarding_presenter.dart';
import 'package:diocese_santos/ui/widgets/page_container.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    required this.presenter,
    super.key,
  });

  final OnboardingPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return const PageContainer(
      children: [],
    );
  }
}
