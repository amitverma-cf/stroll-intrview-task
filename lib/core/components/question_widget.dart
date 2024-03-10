import 'package:flutter/material.dart';
import '../../common/app_colors.dart';
import 'avatar_named.dart';

class QuestionWidget extends StatelessWidget {
  final String name;
  final int? age;
  final String url;
  final String question;
  final String? answer;
  const QuestionWidget({
    super.key,
    required this.name,
    required this.age,
    required this.url,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AvatarNamedWidget(
          name: name,
          age: age,
          url: url,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 96),
              Text(
                question,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.fourthTextColor,
                ),
              ),
              const SizedBox(height: 10),
              (answer != null)
                  ? Text(
                      answer ?? '',
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.secondaryTextColor,
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }
}
