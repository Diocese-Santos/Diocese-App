import 'package:diocese_santos/main/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class UserInfoHeader extends StatelessWidget {
  final String userName;
  final String userPhotoUrl;
  final Function() onLogout;

  const UserInfoHeader({
    required this.userName,
    required this.userPhotoUrl,
    required this.onLogout,
    super.key,
  });

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
                backgroundImage: NetworkImage(userPhotoUrl),
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
            ),
            Gap(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
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
        OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.lightBlue[200]!),
              shape: CircleBorder(),
              fixedSize: Size(18, 18)),
          onPressed: () {
            onLogout();
            context.push(Routes.login);
          },
          child: Icon(
            Icons.logout,
            color: Colors.white,
            size: 16,
          ),
        ),
      ],
    );
  }
}
