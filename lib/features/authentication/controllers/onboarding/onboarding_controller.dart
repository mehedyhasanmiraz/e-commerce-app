import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/login.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class onBoardingController extends GetxController {
  static onBoardingController get instance => Get.find();

  /// variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// update current indicator when page scroll
  void updatePageIndicator(index)=> currentPageIndex.value = index;

  /// jump to the specific dot selected page
  void dotNavigationClick (index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// update current index and jump to the next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      final storage = GetStorage();
      if(kDebugMode){
        print('================ Get Storage Next Button =============');
        print(storage.read("isFirstTime"));
      }
      storage.write("isFirstTime", false);

      if(kDebugMode){
        print('================ Get Storage Next Button =============');
        print(storage.read("isFirstTime"));
      }

      Get.offAll(const LoginScreen());
    } else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// update current index and jump to the lost page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}