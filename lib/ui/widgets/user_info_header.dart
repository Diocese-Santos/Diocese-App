import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserInfoHeader extends StatelessWidget {
  const UserInfoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: Colors.lightBlueAccent[100],
              child: CircleAvatar(
                radius: 24,
                backgroundImage: const AssetImage('assets/papa.png'),
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
            ),
            Gap(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Papa Pio X',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Diocese de Santos',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.white70,
                      ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
