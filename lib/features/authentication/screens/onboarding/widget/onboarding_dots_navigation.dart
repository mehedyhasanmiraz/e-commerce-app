import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/devices/device_utility.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotsNavigation extends StatelessWidget {
  const OnBoardingDotsNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = onBoardingController.instance;
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark?TColors.light:TColors.dark, dotHeight: 6),
        ));
  }
}