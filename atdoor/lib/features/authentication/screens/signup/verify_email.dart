import 'package:atdoor/common/widgets/success_screen/success_scree.dart';
import 'package:atdoor/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              const Image(image: AssetImage(TImages.deliveredMail)),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Title & Subtitle
              Text(TTexts.confirmMail,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black),
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text("support@atdoor.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.confirmMailSubtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text("Continue"),
                    onPressed: () => Get.to(() => SuccessScreen(
                        image: TImages.successAccount,
                        title: TTexts.yourAccountCreatedTitle,
                        subtitle: TTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()))),
                  )),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text("Resend Email"))),
            ],
          ),
        ),
      ),
    );
  }
}
