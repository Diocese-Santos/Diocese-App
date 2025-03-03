import 'package:diocese_santos/presentation/presenters/onboarding_presenter.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

class OnboardingRxPresenter implements OnboardingPresenter {
  @override
  late final PageController pageViewController;

  final currentPageSubject = BehaviorSubject<int>.seeded(0);

  OnboardingRxPresenter() : pageViewController = PageController();

  @override
  Stream<int> get currentPage => currentPageSubject.stream;

  @override
  void onChangedSlide(int index) {
    currentPageSubject.add(index);
  }

  @override
  void handleChangeSlide(int index) {
    pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}
