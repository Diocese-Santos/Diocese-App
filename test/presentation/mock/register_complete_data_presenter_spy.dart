import 'package:diocese_santos/presentation/presenters/complete_data_presenter.dart';

final class RegisterCompleteDataPresenterSpy
    implements RegisterCompleteDataPresenter {
  int nextCount = 0;

  @override
  void next() {
    nextCount++;
  }
}
