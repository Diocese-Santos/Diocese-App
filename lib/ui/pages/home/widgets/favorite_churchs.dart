import 'package:diocese_santos/presentation/presenters/home_presenter.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FavoriteChurchs extends StatelessWidget {
  const FavoriteChurchs({
    super.key,
    required this.churchs,
  });

  final List<ChurchViewModel> churchs;

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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            separatorBuilder: (context, index) => const Gap(8),
            scrollDirection: Axis.horizontal,
            itemCount: churchs.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: SizedBox(
                  width: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          churchs[index].image,
                          height: 100,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Gap(14),
                      Text(
                        churchs[index].name,
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
                            churchs[index].city,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  color: Colors.grey.shade600,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Gap(24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: 48,
            width: double.infinity,
            child: FilledButton(
              onPressed: () {},
              child: Text(
                'Explorar Novas Paróquias',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
