import 'package:diocese_santos/ui/pages/churches/widgets/church_card.dart';
import 'package:diocese_santos/ui/widgets/header.dart';
import 'package:diocese_santos/ui/widgets/page_container.dart';
import 'package:diocese_santos/presentation/presenters/churches_presenter.dart';
import 'package:diocese_santos/ui/widgets/user_info_header.dart';

import 'package:flutter/material.dart';

class ChurchesPage extends StatefulWidget {
  final ChurchesPresenter presenter;

  const ChurchesPage({required this.presenter, super.key});

  @override
  State<ChurchesPage> createState() => _ChurchesPageState();
}

class _ChurchesPageState extends State<ChurchesPage> {
  @override
  void initState() {
    super.initState();
    widget.presenter.loadUserData();
    widget.presenter.listAllChurches();
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return StreamBuilder<ChurchesViewModel>(
      stream: widget.presenter.churchesStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.active) {
          return Center(child: const CircularProgressIndicator());
        }
        if (!snapshot.hasData) {
          return Center(child: const CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Erro: ${snapshot.error}'));
        }

        final viewModel = snapshot.data!;

        return PageContainer(
          showBottomNavigationBar: true,
          child: Column(
            children: [
              Header(
                padding: EdgeInsets.only(
                  left: 24,
                  top: 10 + statusBarHeight,
                  right: 24,
                  bottom: 40,
                ),
                child: UserInfoHeader(
                  onLogout: () {},
                  userName: viewModel.user.name,
                  userPhotoUrl: viewModel.user.photoUrl ?? '',
                ),
              ),
              viewModel.churches.isEmpty
                  ? Center(child: Text('Nenhuma paróquia encontrada'))
                  : SizedBox(
                    height: MediaQuery.of(context).size.height - 100,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemBuilder:
                          (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: ChurchCard(
                              imageUrl: viewModel.churches[index].image,
                              name: viewModel.churches[index].name,
                              address: viewModel.churches[index].city,
                            ),
                          ),
                      itemCount: viewModel.churches.length,
                    ),
                  ),
            ],
          ),
        );
      },
    );
  }
}
