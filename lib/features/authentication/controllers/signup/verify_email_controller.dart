import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_ecommerce/common/widgets/success_button/success_screen.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:flutter_ecommerce/utils/popups/loader.dart';
import 'package:get/get.dart';

import '../../../../data/Repository/authentication/Authentication_repository.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  /// -Send Email whenever Verify Screen appears and set timer for redirect
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  /// - Send Email verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      TLoaders.successSnackBar(
          title: "Email sent.",
          message: "Please check your inbox and verify your email");
    } catch (e) {
      TLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  /// timer to automatically redirect on email verification
  setTimerForAutoRedirect() {
    Timer.periodic(Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if(user?.emailVerified?? false){
        timer.cancel();
        Get.off(()=> SuccessScreen(
            image: TImage.successfullyRegisterAnimation,
            title: TTexts.yourAccountCreatedTitle,
            subTitle: TTexts.yourAccountCreatedSubTitle,
            onPressed: ()=> AuthenticationRepository.instance.screenRedirect()));
      }
    });
  }

  /// Manually check if email verified
  checkEmailVerificationStatus(){
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified){
      Get.off(()=> SuccessScreen(
          image: TImage.successfullyRegisterAnimation,
          title: TTexts.yourAccountCreatedTitle,
          subTitle: TTexts.yourAccountCreatedSubTitle,
          onPressed: ()=> AuthenticationRepository.instance.screenRedirect));
    }
  }
}
