import 'package:flutter/material.dart';
import '../../common/app_colors.dart';

class AppBarTitle extends StatelessWidget {
  final String title;
  final String? time;
  final int? personCount;
  const AppBarTitle({
    super.key,
    required this.title,
    this.time,
    this.personCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: AppColors.mainTextColor,
                shadows: [
                  Shadow(
                    color: Colors.black45,
                    offset: Offset(0, 2),
                    blurRadius: 24,
                  )
                ],
              ),
            ),
            const SizedBox(width: 4),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 34,
              color: AppColors.mainTextColor,
              shadows: [
                Shadow(
                  color: Colors.black45,
                  offset: Offset(0, 2),
                  blurRadius: 24,
                )
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (time != null)
                ? AppBarSubTitle(
                    subtitle: time,
                  )
                : const SizedBox.shrink(),
            const SizedBox(width: 9.73),
            (personCount != null)
                ? AppBarSubTitle(
                    subtitle: personCount.toString(),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ],
    );
  }
}

class AppBarSubTitle extends StatelessWidget {
  final String? subtitle;
  const AppBarSubTitle({
    super.key,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.timer_outlined,
          color: AppColors.fourthTextColor,
          shadows: [
            Shadow(
              color: Colors.black45,
              offset: Offset(0, 1),
              blurRadius: 36,
            )
          ],
        ),
        const SizedBox(width: 3.27),
        Text(
          subtitle ?? "",
          style: const TextStyle(
            color: AppColors.fourthTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            shadows: [
              Shadow(
                color: Colors.black45,
                offset: Offset(0, 2),
                blurRadius: 24,
              )
            ],
          ),
        ),
      ],
    );
  }
}
