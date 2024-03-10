import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interview_ui/common/app_colors.dart';

class AvatarNamedWidget extends StatelessWidget {
  final String name;
  final int? age;
  final String url;
  const AvatarNamedWidget({
    super.key,
    required this.name,
    required this.age,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 7,
          left: 0,
          child: Container(
            margin: const EdgeInsets.only(left: 30),
            padding:
                const EdgeInsets.only(left: 34, right: 8, top: 4, bottom: 4),
            decoration: BoxDecoration(
              color: AppColors.boxColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              '$name, ${age != null ? age.toString() : " "}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.boxColor,
          child: CircleAvatar(
            radius: 25,
            backgroundImage: CachedNetworkImageProvider(url),
          ),
        ),
      ],
    );
  }
}
