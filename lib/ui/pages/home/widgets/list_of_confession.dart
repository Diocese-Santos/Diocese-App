import 'package:diocese_santos/presentation/presenters/home_presenter.dart';
import 'package:diocese_santos/ui/widgets/information_card.dart';
import 'package:diocese_santos/ui/widgets/subtitle_section.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ListOfConfession extends StatelessWidget {
  const ListOfConfession({
    required this.confessions,
    super.key,
  });

  final List<EventViewModel> confessions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubtitleSection(title: 'Confissões'),
          Gap(24),
          ...confessions.map(
            (confession) {
              return Column(
                children: [
                  InformationCard(
                    title: confession.title,
                    startTime: confession.startTime,
                    endTime: confession.endTime,
                    distance: confession.distance,
                    celebrant: confession.celebrant,
                  ),
                  Gap(16),
                ],
              );
            },
          ),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                'Ver tudo',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
          Gap(40),
        ],
      ),
    );
  }
}
