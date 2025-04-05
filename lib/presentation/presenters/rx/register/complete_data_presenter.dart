import 'package:diocese_santos/presentation/presenters/complete_data_presenter.dart';

class RegisterCompleteDataRxPresenter implements RegisterCompleteDataPresenter {
  @override
  void next({Function? redirectCallback}) {
    redirectCallback?.call();
  }
}
