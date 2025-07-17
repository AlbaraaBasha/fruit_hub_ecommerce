import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_assets.dart';
import 'package:fruit_hub/features/onBoarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: Assets.imagesFruitBasket,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          backgroundImage: Assets.imagesOnboardingBackground1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('مرحبا بك في'), Text('Fruit'), Text('HUB')],
          ),
        ),
        PageViewItem(
          image: Assets.imagesPageview2Image,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          backgroundImage: Assets.imagesPageview2BackgroungImage,
          title: Text('ابحث وتسوق'),
        ),
      ],
    );
  }
}
