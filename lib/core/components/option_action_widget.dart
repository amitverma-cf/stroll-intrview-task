// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../common/app_colors.dart';

class OptionActionWidget extends StatelessWidget {
  final String text;
  final Function() onMicPressed;
  final Function() onNextPressed;
  const OptionActionWidget({
    Key? key,
    required this.text,
    required this.onMicPressed,
    required this.onNextPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Text(
            text,
            maxLines: 2,
            style: const TextStyle(
                color: AppColors.fourthTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onMicPressed,
              icon: const CircleAvatar(
                backgroundColor: AppColors.mainColor,
                radius: 24,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.mic,
                    color: AppColors.mainColor,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: onNextPressed,
              icon: const CircleAvatar(
                radius: 24,
                backgroundColor: AppColors.mainColor,
                child: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
