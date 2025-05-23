import 'package:diocese_santos/presentation/presenters/home_presenter.dart';

class HomeRxPresenter implements HomePresenter {
  @override
  String liturgicalColor = '';
  @override
  String liturgicalDate = '';
  @override
  String liturgicalWeek = '';

  @override
  void getLiturgicalInformations() {
    liturgicalColor = 'Roxo';
    liturgicalDate = 'SEG., 04 MAR';
    liturgicalWeek = '3ª Semana da Quaresma';
  }
}
