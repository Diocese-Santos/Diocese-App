import 'package:flutter/material.dart';

abstract class OnboardingPresenter {
  Stream<int> get currentPage;

  void handleChangeSlide(int index);
  void onChangedSlide(int index);

  PageController get pageViewController;
}

final class OnboardingSlideViewModel {
  final String title;
  final String description;
  final String image;

  const OnboardingSlideViewModel({
    required this.title,
    required this.description,
    required this.image,
  });
}
