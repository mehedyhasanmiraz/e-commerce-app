import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widget/onboarding.dart';
import 'package:flutter_ecommerce/utils/exceptions/firebase_exceptions.dart';
import 'package:flutter_ecommerce/utils/exceptions/format_exceptions.dart';
import 'package:flutter_ecommerce/utils/exceptions/platform_exceptions.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../utils/exceptions/firebase_auth_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// - Variable
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// -Called from main.dart on app launch
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// -Function to show Relevant Screen
  screenRedirect()async{
  // local storage
    if(kDebugMode){
      print('================ Get Storage Authentication Repo=============');
      print(deviceStorage.read("isFirstTime"));
    }
    deviceStorage.writeIfNull("isFirstTime", true);
    deviceStorage.read("isFirstTime") != true ? Get.offAll(LoginScreen()): Get.offAll(OnboardingScreen());
  }


  /*...............Email and Password signIn............... */
 /// -[Email Authentication] SingIn

/// -[Email Authentication] Register
 Future<UserCredential> registerWithEmailAndPassword (String email, String password)async{
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e){
      throw TFirebaseAuthExceptions(e.code).message;
    } on FirebaseException catch (e){
      throw TFirebaseExceptions(e.code).message;
   } on FormatException catch (_){
      throw TFormatExceptions();
    } on PlatformException catch (e){
      throw TPlatformExceptions(e.code).message;
    } catch (e){
      throw "Something went wrong. Please try again!";
    }
 }

/// [ReAuthenticate] ReAuthenticate User

/// [Email Verification] -Mail Verification
  Future<void> sendEmailVerification()async{
    try{
      return await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e){
      throw TFirebaseAuthExceptions(e.code).message;
    } on FirebaseException catch (e){
      throw TFirebaseExceptions(e.code).message;
    } on FormatException catch (_){
      throw TFormatExceptions();
    } on PlatformException catch (e){
      throw TPlatformExceptions(e.code).message;
    } catch (e){
      throw "Something went wrong. Please try again!";
    }
  }
/// [Email Authentication] Forget password


/*...............Federated identification and social signIn............... */
/// [Google Authentication] Google

/// [Facebook Authentication] Facebook


/*...............End Federated identification and social signIn............... */
/// [Logout user] valid for any authentication

/// [Delete user] Remove User Auth and Firestore account

}