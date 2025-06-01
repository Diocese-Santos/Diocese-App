import 'package:diocese_santos/ui/widgets/information_card.dart';
import 'package:diocese_santos/ui/widgets/subtitle_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ListOfMasses extends StatelessWidget {
  const ListOfMasses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubtitleSection(title: 'Missas'),
          Gap(24),
          InformationCard(),
          Gap(16),
          InformationCard(),
          Gap(16),
          InformationCard(),
          Gap(16),
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
        ],
      ),
    );
  }
}
