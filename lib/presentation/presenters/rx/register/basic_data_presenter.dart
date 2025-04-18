import 'package:diocese_santos/presentation/presenters/basic_data_presenter.dart';

class RegisterBasicDataRxPresenter implements RegisterBasicDataPresenter {
  @override
  void next({Function? redirectCallback}) {
    redirectCallback?.call();
  }
}
