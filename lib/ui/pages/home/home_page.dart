import 'package:diocese_santos/presentation/presenters/home_presenter.dart';
import 'package:diocese_santos/ui/pages/home/widgets/confession_assistants.dart';
import 'package:diocese_santos/ui/pages/home/widgets/daily_liturgy.dart';
import 'package:diocese_santos/ui/pages/home/widgets/favorite_churchs.dart';
import 'package:diocese_santos/ui/pages/home/widgets/list_of_confession.dart';
import 'package:diocese_santos/ui/pages/home/widgets/list_of_masses.dart';
import 'package:diocese_santos/ui/pages/home/widgets/liturgical_informations.dart';
import 'package:diocese_santos/ui/widgets/custom_divider.dart';
import 'package:diocese_santos/ui/widgets/header.dart';
import 'package:diocese_santos/ui/widgets/page_container.dart';
import 'package:diocese_santos/ui/widgets/quick_access_header.dart';
import 'package:diocese_santos/ui/widgets/user_info_header.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.presenter,
    super.key,
  });

  final HomePresenter presenter;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    widget.presenter.loadMasses();
    widget.presenter.loadChurchs();
    widget.presenter.loadConfession();
    widget.presenter.loadLiturgicalInformations();
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return StreamBuilder<HomeViewModel>(
        stream: widget.presenter.homeStream,
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
            child: Stack(
              children: [
                Column(
                  children: [
                    Header(
                      padding: EdgeInsets.only(
                        left: 24,
                        top: 10 + statusBarHeight,
                        right: 24,
                        bottom: 40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UserInfoHeader(),
                          Gap(32),
                          Text(
                            'Explore a Diocese de Santos',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Gap(16),
                          SizedBox(
                            height: 54,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                hintText: 'O que você deseja encontrar?',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                                prefixIcon: const Icon(Icons.search),
                                prefixIconColor: Colors.blueAccent,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          Gap(32),
                        ],
                      ),
                    ),
                    Gap(54),
                    LiturgicalInformations(
                      date: viewModel.liturgicalInformations.date,
                      week: viewModel.liturgicalInformations.week,
                      color: viewModel.liturgicalInformations.color,
                    ),
                    Gap(8),
                    DailyLiturgy(),
                    Gap(16),
                    FavoriteChurchs(churchs: viewModel.churchs),
                    CustomDivider(),
                    ListOfMasses(masses: viewModel.masses),
                    ListOfConfession(confessions: viewModel.confession),
                    ConfessionAssistants(),
                    CustomDivider(),
                  ],
                ),
                Positioned(
                  top: 270,
                  left: 8,
                  right: 8,
                  child: QuickAccessHeader(),
                ),
              ],
            ),
          );
        });
  }
}
