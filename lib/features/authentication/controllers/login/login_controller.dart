import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce/data/Repository/authentication/Authentication_repository.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/helpers/network_manager.dart';
import 'package:flutter_ecommerce/utils/popups/full_screen_loader.dart';
import 'package:flutter_ecommerce/utils/popups/loader.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  ///  Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();


  @override
  void onInit() {

    email.text = localStorage.read("REMEMBER_ME_EMAIL")??'';
    password.text = localStorage.read("REMEMBER_ME_PASSWORD")??'';
    super.onInit();
  }

  /// -- Email and password SignIn
  Future<void> emailAndPasswordSingIn() async {
    try {
      // start loading
      TFullScreenLoader.openLoadingDialogue(
          "Loading you in.....", TImage.docerAnimation);

      // check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // form validation
      if (!loginFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // save data if remember me is selected
      if (rememberMe.value) {
        localStorage.write("REMEMBER_ME_EMAIL...", email.text.trim());
        localStorage.write("REMEMBER_ME_PASSWORD...", password.text.trim());

        // login user using email and password authentication
        final userCredentials = await AuthenticationRepository.instance
            .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

        // Remove loader
        TFullScreenLoader.stopLoading();

        // Redirect
        AuthenticationRepository.instance.screenRedirect();
      }
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: "Oh Snap", message: e.toString());
    }
  }
}
