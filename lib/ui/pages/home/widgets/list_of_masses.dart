import 'package:diocese_santos/presentation/presenters/home_presenter.dart';
import 'package:diocese_santos/ui/widgets/information_card.dart';
import 'package:diocese_santos/ui/widgets/subtitle_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ListOfMasses extends StatelessWidget {
  const ListOfMasses({
    required this.masses,
    super.key,
  });

  final List<EventViewModel> masses;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubtitleSection(title: 'Missas'),
          Gap(24),
          ...masses.map(
            (masse) {
              return Column(
                children: [
                  InformationCard(
                    title: masse.title,
                    startTime: masse.startTime,
                    endTime: masse.endTime,
                    distance: masse.distance,
                    celebrant: masse.celebrant,
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
