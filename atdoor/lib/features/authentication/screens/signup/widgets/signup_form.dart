import 'package:atdoor/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
          children: [
            /// First & Last Name
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'First name',
                          prefixIcon: Icon(Iconsax.user)),
                    )),
                const SizedBox(width: TSizes.spaceBtwInputFields),
                Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Last name',
                          prefixIcon: Icon(Iconsax.user)),
                    ))
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            /// User Name
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),

            const SizedBox(height: TSizes.spaceBtwInputFields),

            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'E-mail', prefixIcon: Icon(Iconsax.direct)),
            ),

            const SizedBox(height: TSizes.spaceBtwInputFields),

            /// Phone Number
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  prefixIcon: Icon(Iconsax.call)),
            ),

            const SizedBox(height: TSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),

            const SizedBox(height: TSizes.spaceBtwInputFields),

            /// Terms & Conditions
            Row(
              children: [
                SizedBox(width: 20, height: 24, child: Checkbox(value: true, onChanged: (value) {})),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text.rich(TextSpan(
                    children:[
                      TextSpan(text: "I agree to", style: Theme.of(context).textTheme.bodySmall),

                      TextSpan(text: " Privacy Policy ", style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? TColors.white : TColors.primary, decoration: TextDecoration.underline,
                          decorationColor: dark ? TColors.white : TColors.primary
                      )),

                      TextSpan(text: "and", style: Theme.of(context).textTheme.bodySmall),

                      TextSpan(text: " Terms of use", style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? TColors.white : TColors.primary, decoration: TextDecoration.underline,
                          decorationColor: dark ? TColors.white : TColors.primary
                      )),
                    ]),
                )
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Signup Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.to(()=> const VerifyEmailScreen()), child: const Text("Create Account")),)
          ],
        ));
  }
}