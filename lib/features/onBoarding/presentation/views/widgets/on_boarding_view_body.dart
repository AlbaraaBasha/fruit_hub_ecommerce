import 'package:flutter/material.dart';
import 'package:fruit_hub/constans.dart';
import 'package:fruit_hub/core/services/shared_prefrences_singlton.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/features/onBoarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  num currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController)),

        // DotsIndicator(
        //   dotsCount: 2,

        //   decorator: DotsDecorator(
        //     color:
        //      currentPage == 0
        //         ? AppColors.lightPrimaryColor
        //         : AppColors.primaryColor,
        //     activeColor: AppColors.primaryColor,
        //   ),
        // ),
        SmoothPageIndicator(
          controller: pageController,
          count: 2,
          effect: const WormEffect(
            dotHeight: 10,
            dotWidth: 10,
            dotColor: AppColors.lightPrimaryColor,
            activeDotColor: AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: 26),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Visibility(
            visible: currentPage == 1,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: CustomButton(
              onPressed: () {
                Prefs.setBool(kIsOnboardingSeen, true);
                Navigator.pushReplacementNamed(context, LoginView.routeName);
              },
              text: 'ابدأ الآن',
            ),
          ),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
