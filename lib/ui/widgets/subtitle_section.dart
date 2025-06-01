import 'package:flutter/material.dart';

class SubtitleSection extends StatelessWidget {
  const SubtitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffE4F1FA),
          border: Border.all(
            color: const Color(0xffBDDCF3),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          'Missas',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Color(0xff70B1E2),
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
