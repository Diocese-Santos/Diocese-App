import 'package:flutter/material.dart';

abstract class OnboardingPresenter {
  Stream<int> get currentPage;

  void handleChangeSlide(int index);
  void onChangedSlide(int index);

  PageController get pageViewController;
}
