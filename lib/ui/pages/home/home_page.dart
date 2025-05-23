import 'package:diocese_santos/presentation/presenters/home_presenter.dart';
import 'package:diocese_santos/ui/pages/home/widgets/daily_liturgy.dart';
import 'package:diocese_santos/ui/pages/home/widgets/liturgical_informations.dart';
import 'package:diocese_santos/ui/widgets/header.dart';
import 'package:diocese_santos/ui/widgets/page_container.dart';
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
    widget.presenter.getLiturgicalInformations();
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return PageContainer(
      showBottomNavigationBar: true,
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
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
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
            ],
          ),
        ),
        LiturgicalInformations(
          date: widget.presenter.liturgicalDate,
          week: widget.presenter.liturgicalWeek,
          color: widget.presenter.liturgicalColor,
        ),
        Gap(8),
        DailyLiturgy(),
      ],
    );
  }
}
