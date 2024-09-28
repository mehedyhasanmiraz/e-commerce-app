import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/devices/device_utility.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: ()=> onBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),backgroundColor: dark?TColors.primary: Colors.black,
          ),
          child: const Icon(Icons.keyboard_arrow_right,size: TSizes.iconLg,),
        )
    );
  }
}