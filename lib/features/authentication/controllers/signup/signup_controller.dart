import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce/data/Repository/user/user_repository.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup_widget/verify_email.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/popups/full_screen_loader.dart';
import 'package:flutter_ecommerce/utils/popups/loader.dart';
import 'package:get/get.dart';

import '../../../../data/Repository/authentication/Authentication_repository.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../personalization/models/user_model.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// -Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// SignUp
  void signup() async {
    try {
      /// Start Loading
      TFullScreenLoader.openLoadingDialogue(
          "We are processing your information....", TImage.docerAnimation);

      /// Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      /// Form validation
      if (!signupFormKey.currentState!.validate()) return;

      /// Privacy policy check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
            title: "Accept Privacy Policy",
            message:
                "In order to create account, you must have to read and accept privacy policy & terms of use");
        return;
      }

      /// Register user in the firebase authentication and save user data in the firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      /// Save authenticated data in the firebase firestore
      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          userName: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
        profilePicture: ""
      );

      final userRepository = Get.put(UserRepository());
      userRepository.saveUserRecord(newUser);

      /// Remove loader
      TFullScreenLoader.stopLoading();

      /// Show success message
      TLoaders.successSnackBar(title: "Congratulations",
          message: "Your account has been created, Verify Email to continue");
      /// Move to Verify Email screen
      Get.to(()=> VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      /// Remove loader
      TFullScreenLoader.stopLoading();

      /// Show some generic error to the user
      TLoaders.errorSnackBar(title: "oh Snap!", message: e.toString());
    }
  }
}
