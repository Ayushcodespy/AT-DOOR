import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update Current Index When Page Scroll

  void updatePageIndicator(index) => currentPageIndex.value = index;
  // Jump to the specific dot selected page

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update Current Index and Jump to next page
  void nextPage() {
    if(currentPageIndex.value == 2){
      Get.offAll(const LoginScreen());
    }
    else{
      int page =currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update Current index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}