import 'package:atdoor/common/widgets/login_signup/form_divider.dart';
import 'package:atdoor/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:atdoor/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black),
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              const SignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              const TFormDivider(dividerText: "Or SignUp With"),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Social Buttons
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

