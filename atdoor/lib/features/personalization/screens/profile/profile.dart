import 'package:atdoor/common/widgets/texts/section_heading.dart';
import 'package:atdoor/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Profile')),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(children: [
                  const TCircularImage(image: TImages.user, width: 80, height: 88),
                  TextButton(onPressed: () {}, child: const Text("Change Profile Picture")),
                ]),
              ),

              ///-- Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Profile Info
              const TSectionHeading(title: "Profile Information", showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title: 'Name', value: 'Ayush Patel', onPressed: () {}),
              TProfileMenu(title: 'Username', value: 'Ayush1234', onPressed: () {}),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Personal Info
              const TSectionHeading(title: "Personal Information", showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title: 'User ID', value: 'AY123A1', icon: Iconsax.copy , onPressed: () {}),
              TProfileMenu(title: 'E-Mail', value: 'Ayush1234@gmail.com', onPressed: () {}),
              TProfileMenu(title: 'Phone No.', value: '1234567890', onPressed: () {}),
              TProfileMenu(title: 'Gender', value: 'male', onPressed: () {}),
              TProfileMenu(title: 'Date of Birth', value: '10 Mar, 2003', onPressed: () {}),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                    onPressed: (){},
                    child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
              )

            ], // Column
          ),
        ),
      ),
    );
  }
}
