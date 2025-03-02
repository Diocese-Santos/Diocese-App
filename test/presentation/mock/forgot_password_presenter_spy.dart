import 'package:diocese_santos/presentation/presenters/forgot_password.dart';

final class ForgotPasswordPresenterSpy implements ForgotPasswordPresenter {
  int recoveryPasswordCount = 0;

  @override
  void handleRecoveryPassword() {
    recoveryPasswordCount++;
  }
}
