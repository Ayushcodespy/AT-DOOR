import 'package:atdoor/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:atdoor/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Heading
            Text(TTexts.forgetPwdTitle,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black)),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.forgetPwdSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            /// Text fields
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "E-mail", prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Submit buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=> Get.to(()=> const ResetPassword()), child: const Text("Submit")),
            ),
          ],
        ),
      ),
    );
  }
}
