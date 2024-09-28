import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common/widgets/loaders/animation_loader.dart';
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 250,),
                    TAnimationLoaderWidget(text:text, animation: animation, showAction: false,),
                  ],
                ),
              ),
            )
        ),
    );
  }

  /// -Stop the currently open loading dialogue
  /// This method doesn't return anything
  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop(); // close the dialogue using navigator
  }
}