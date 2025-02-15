import 'package:diocese_santos/presentation/presenters/login_presenter.dart';

final class LoginPresenterSpy implements LoginPresenter {
  int navigateToSignUpCount = 0;
  int navigateToForgotPasswordCount = 0;
  int signInCount = 0;
  int navigateWithVisitorCount = 0;

  @override
  void navigateToSignUp() {
    navigateToSignUpCount++;
  }

  @override
  void navigateToForgotPassword() {
    navigateToForgotPasswordCount++;
  }

  @override
  void signIn() {
    signInCount++;
  }

  @override
  void navigateWithVisitor() {
    navigateWithVisitorCount++;
  }
}
