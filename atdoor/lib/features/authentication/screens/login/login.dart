import 'package:atdoor/features/authentication/screens/login/widgets/login_form.dart';
import 'package:atdoor/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter/material.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo Title and Subtitle
              LoginHeader(),

              /// Form
              LoginForm(),

              /// Divider
              TFormDivider(dividerText: 'Or Sign In With'),
              SizedBox(height: TSizes.spaceBtwItems),

              /// Footer
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
