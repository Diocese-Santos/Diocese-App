import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({super.key});

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
            'Paróquia São José Operário',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          Gap(8),
          Row(
            children: [
              const Text(
                '16:00 até 18:30',
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
              const Text(
                '1.2 km',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Celebrante
          const Text(
            'Celebrante: Padre Ednei Barbosa',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
