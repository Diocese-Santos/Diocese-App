import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.distance,
    this.celebrant,
    super.key,
  });

  final String title;
  final String startTime;
  final String endTime;
  final String distance;
  final String? celebrant;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(99),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 8,
                      ),
                      Gap(4),
                      Text(
                        'Acontecendo',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(8),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(99),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  child: Text(
                    'Missa',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.info_outline,
                color: Colors.blue,
                size: 20,
              ),
            ],
          ),
          Gap(12),
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          Gap(8),
          Row(
            children: [
              Text(
                '$startTime até $endTime',
                style: TextStyle(color: Colors.grey),
              ),
              Gap(8),
              const Text(
                '-',
                style: TextStyle(color: Colors.grey),
              ),
              Gap(8),
              const Icon(Icons.directions_run, size: 16, color: Colors.grey),
              Gap(4),
              Text(
                distance,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 8),
          celebrant != null
              ? Text(
                  'Celebrante: $celebrant',
                  style: TextStyle(color: Colors.grey),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
