import 'package:flutter/material.dart';
import 'package:fruit_hub/features/onBoarding/presentation/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = 'onBoarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const OnBoardingViewBody()));
  }
}
