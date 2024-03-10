import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interview_ui/common/app_colors.dart';
import 'package:interview_ui/common/app_constants.dart';
import '../components/app_bar_title.dart';
import '../components/bottom_navbar.dart';
import '../components/option_action_widget.dart';
import '../components/option_widget.dart';
import '../components/question_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 120,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const AppBarTitle(
          title: "Stroll Bonfire",
          time: "22h 00m",
          personCount: 103,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              foregroundDecoration:
                  const BoxDecoration(gradient: AppColors.bgGradient),
              child: CachedNetworkImage(
                imageUrl: AppConstants.bgUrl,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                        child: CircularProgressIndicator(
                            value: downloadProgress.progress)),
                errorWidget: (context, url, error) =>
                    const Center(child: Icon(Icons.error)),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const QuestionWidget(
                    name: 'Angelina',
                    age: 28,
                    url: AppConstants.profileUrl,
                    question: 'What is your favorite time of the day?',
                    answer: '"Mine is definitely the peace in the morning"',
                  ),
                  const SizedBox(height: 14),
                  const OptionWidget(
                    optionText: [
                      'The peace in the\nearly mornings',
                      'The magical\ngolden hours',
                      'Wind-down time\nafter dinners',
                      'The serenity\npast midnight',
                    ],
                  ),
                  OptionActionWidget(
                    text: "Pick your option.\nSee who has a similar mind.",
                    onMicPressed: () {},
                    onNextPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
