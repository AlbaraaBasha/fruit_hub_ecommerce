import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/onBoarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: AppColors.primaryColor.withValues(alpha: 0.5),
            activeColor: AppColors.primaryColor,
          ),
        ),
        SizedBox(height: 26),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomButton(onPressed: () {}, text: 'ابدأ الآن'),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
