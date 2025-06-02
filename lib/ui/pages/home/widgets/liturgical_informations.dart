import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LiturgicalInformations extends StatelessWidget {
  const LiturgicalInformations({
    super.key,
    required this.week,
    required this.color,
    required this.date,
  });

  final String date;
  final String week;
  final String color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple.shade100),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 3,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const Gap(12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ano B',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                  const Gap(14),
                  Row(
                    children: [
                      Icon(Icons.calendar_today,
                          color: Colors.purple, size: 16),
                      Gap(8),
                      Text(
                        date,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  const Gap(14),
                  Row(
                    children: [
                      Icon(
                        Icons.hourglass_bottom,
                        color: Colors.purple,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Text(
                        week,
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade900,
                                ),
                      ),
                    ],
                  ),
                  const Gap(14),
                  Row(
                    children: [
                      Icon(Icons.bookmark, color: Colors.purple, size: 16),
                      Gap(8),
                      Text(
                        'Cor litúrgica: $color',
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade900,
                                ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
