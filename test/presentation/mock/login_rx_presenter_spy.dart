import 'package:diocese_santos/presentation/presenters/login_presenter.dart';

final class LoginPresenterSpy implements LoginPresenter {
  int navigateToSignUpCount = 0;

  @override
  void navigateToSignUp() {
    navigateToSignUpCount++;
  }
}
