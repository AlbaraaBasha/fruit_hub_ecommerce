import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_assets.dart';
import 'package:fruit_hub/features/onBoarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [SvgPicture.asset(Assets.imagesTree)],
          ),
          SvgPicture.asset(Assets.imagesFruithub),
          SvgPicture.asset(Assets.imagesCircles),
        ],
      ),
    );
  }

  void executeNavigation() {
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }
}
