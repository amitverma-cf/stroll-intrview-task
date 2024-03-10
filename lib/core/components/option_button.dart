import 'package:flutter/material.dart';

import 'package:interview_ui/common/app_colors.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final String optionText;
  final bool isSelected;

  const OptionButton({
    Key? key,
    required this.text,
    required this.optionText,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.boxColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? AppColors.mainColor : Colors.transparent,
          width: 2,
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.5 - 37,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Row(
        children: [
          CircleAvatar(
            radius: 11,
            backgroundColor:
                isSelected ? AppColors.mainColor : AppColors.fourthTextColor,
            child: CircleAvatar(
              backgroundColor:
                  isSelected ? AppColors.mainColor : AppColors.boxColor,
              radius: 10,
              child: Text(
                optionText,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.fourthTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            maxLines: 2,
            style: const TextStyle(
              color: AppColors.fourthTextColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
