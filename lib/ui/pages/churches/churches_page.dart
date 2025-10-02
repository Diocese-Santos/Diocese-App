import 'package:cloud_firestore/cloud_firestore.dart';
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

    FirebaseFirestore.instance.collection("church").get().then((event) {
      for (var doc in event.docs) {
        print("${doc.id} => ${doc.data()}");
      }
    });
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
              Center(
                child: ChurchCard(
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvZOAbsgAiuAEMopveeXXxd5OgepJypBABXg&s',
                  name: 'teste',
                  address: 'teste',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
