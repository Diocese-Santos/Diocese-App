import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FavoriteChurchs extends StatelessWidget {
  const FavoriteChurchs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Paróquias Favoritas',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade900,
                ),
          ),
        ),
        Gap(16),
        SizedBox(
          height: 180,
          child: ListView.separated(
            separatorBuilder: (context, index) => const Gap(8),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/paroquia.png',
                        width: 140,
                      ),
                    ),
                    Gap(14),
                    Text(
                      'Paróquia São José Operário',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                    ),
                    Gap(4),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 16,
                          color: Colors.yellow.shade600,
                        ),
                        Gap(2),
                        Text(
                          'Peruíbe',
                          style:
                              Theme.of(context).textTheme.labelSmall!.copyWith(
                                    color: Colors.grey.shade600,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
