import 'package:diocese_santos/presentation/presenters/login_presenter.dart';

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

  @override
  // TODO: implement isBusyStream
  Stream<bool> get isBusyStream => throw UnimplementedError();

  @override
  // TODO: implement loginStream
  Stream<LoginViewModel> get loginStream => throw UnimplementedError();
}
