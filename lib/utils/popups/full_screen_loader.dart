import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../contants/colors.dart';

class TFullScreenLoader{
  /// open a full screen loading dialogue with a given text and animation
  /// This methods doesn't return anything
  /// parameters:
  ///
  /// text: The text to be displayed in the loading dialogue
  /// animation: The lottie animation to be shown

  static void openLoadingDialogue (String text, String animation){
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_)=> PopScope(
          canPop: false,
            child: Container(
              color: THelperFunction.isDarkMode(Get.context!) ? TColors.dark: TColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 250,),
                  TAnimationLoaderWidget(text:text, animation: animation),
                ],
              ),
            )
        )
    );
  }
}