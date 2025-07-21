import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/constans.dart';
import 'package:fruit_hub/core/services/shared_prefrences_singlton.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.subtitle,
    required this.backgroundImage,
    required this.title,
    required this.isFirstPage,
  });
  final String image, subtitle, backgroundImage;
  final Widget title;
  final bool isFirstPage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              SvgPicture.asset(
                backgroundImage,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isFirstPage,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextButton(
                    onPressed: () {
                      Prefs.setBool(kIsOnboardingSeen, true);
                      Navigator.pushReplacementNamed(
                        context,
                        LoginView.routeName,
                      );
                    },
                    child: const Text('تخط', style: TextStyles.regular13),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 26),
        title,
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subtitle,
            style: TextStyles.semiBold13,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
