import 'package:diocese_santos/ui/widgets/page_container.dart';
import 'package:diocese_santos/presentation/presenters/churches_presenter.dart';

import 'package:flutter/material.dart';

class ChurchesPage extends StatelessWidget {
  final ChurchesPresenter presenter;

  const ChurchesPage({required this.presenter, super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      showBottomNavigationBar: true,
      child: Column(children: [Text('Paróquias')]),
    );
  }
}
