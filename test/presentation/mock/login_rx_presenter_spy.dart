import 'dart:async';

import 'package:diocese_santos/presentation/presenters/login_presenter.dart';
import 'package:rxdart/rxdart.dart';

final class LoginPresenterSpy implements LoginPresenter {
  int signInCount = 0;
  int authenticateWithGoogleCount = 0;

  @override
  void signIn() {
    signInCount++;
  }

  @override
  Future<void> authenticateWithGoogle() async {
    authenticateWithGoogleCount++;
  }

  final _isBusyController = BehaviorSubject<bool>.seeded(false);
  final _loginController = BehaviorSubject<LoginViewModel>();

  @override
  Stream<bool> get isBusyStream => _isBusyController.stream;

  @override
  Stream<LoginViewModel> get loginStream => _loginController.stream;

  void emitIsBusy(bool value) => _isBusyController.add(value);

  void emitLoginViewModel(LoginViewModel viewModel) =>
      _loginController.add(viewModel);
}
