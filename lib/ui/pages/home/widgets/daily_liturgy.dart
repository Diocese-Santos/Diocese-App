import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://liturgia.cancaonova.com/pb/');
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

class DailyLiturgy extends StatelessWidget {
  const DailyLiturgy({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: OutlinedButton(
        onPressed: _launchUrl,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: BorderSide(
            color: Colors.purple.withAlpha((0.4 * 255).toInt()),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Liturgia Diária',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Colors.purple,
                  ),
            ),
            Gap(14),
            Icon(
              Icons.open_in_new,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
