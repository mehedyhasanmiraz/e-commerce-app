import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widget/onboarding_next_button.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widget/onboarding_page.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widget/onboarding_skip.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:get/get.dart';

import 'onboarding_dots_navigation.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(onBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontally scroll button
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: TImage.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImage.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImage.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// skip button
          const OnBoardingSkip(),

          /// Dot navigation smooth page indicator
          const OnBoardingDotsNavigation(),

          /// Circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}




