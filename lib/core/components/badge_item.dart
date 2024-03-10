import 'package:flutter/material.dart';
import 'package:interview_ui/common/app_colors.dart';

class BadgeItem extends StatelessWidget {
  final CustomPaint icon;
  final String? badge;
  final bool showBadge;

  const BadgeItem({
    super.key,
    required this.icon,
    this.badge,
    this.showBadge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        icon,
        showBadge
            ? Positioned(
                top: -4,
                right: -15,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87, width: 2),
                    color: AppColors.secondaryMainColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    badge ?? "    ",
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 7,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
