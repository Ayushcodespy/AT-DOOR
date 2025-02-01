import 'package:atdoor/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:atdoor/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:atdoor/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:atdoor/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:atdoor/utils/constants/colors.dart';
import 'package:atdoor/utils/constants/image_strings.dart';
import 'package:atdoor/utils/constants/sizes.dart';
import 'package:atdoor/utils/constants/text_strings.dart';
import 'package:atdoor/utils/device/device_utility.dart';
import 'package:atdoor/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Buttons
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const onBoardingDotNavigation(),

          /// Circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? TColors.primary : Colors.black),
            onPressed: () => OnboardingController.instance.nextPage(),
            child: const Icon(Icons.arrow_forward_ios),
        )
    );
  }
}
