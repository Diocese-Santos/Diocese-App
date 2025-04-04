import 'package:diocese_santos/presentation/presenters/basic_data_presenter.dart';

final class RegisterBasicDataPresenterSpy
    implements RegisterBasicDataPresenter {
  int nextCount = 0;

  @override
  void next() {
    nextCount++;
  }
}
