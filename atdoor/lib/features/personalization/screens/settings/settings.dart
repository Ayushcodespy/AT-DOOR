import 'package:atdoor/common/widgets/appbar/appbar.dart';
import 'package:atdoor/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:atdoor/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:atdoor/common/widgets/texts/section_heading.dart';
import 'package:atdoor/features/personalization/screens/address/address.dart';
import 'package:atdoor/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../shop/screens/order/order.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                    title: Text("Account",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: TColors.white))),

                /// -- User Profile Card
                TUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            )),

            /// --- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// --- Account Setting
                  const TSectionHeading(
                      title: "Account Settings", showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: "My Address",
                      subtitle: "Set shopping delivery address",
                      onTap: () => Get.to(()=> const UserAddressScreen())),
                  TSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: "My Cart",
                      subtitle: "Add, remove products and move to checkout",
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: "My Orders",
                      subtitle: "In-progress and Completed Orders",
                      onTap: () => Get.to(()=> const OrderScreen())),
                  TSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: "Bank Account",
                      subtitle: "Withdraw balance to registered bank account",
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: "My Coupons",
                      subtitle: "list of all the discounted coupons",
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: "Notifications",
                      subtitle: "Set any kind of notification message",
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: "Account Privacy",
                      subtitle: "Manage data usage and connected accounts",
                      onTap: () {}),

                  /// --- App Setting
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                      title: "App Settings", showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: "Load Data",
                      subtitle: "Upload Data to your Cloud Firebase",
                      onTap: () {}),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geolocation",
                    subtitle: "Set recommendation based on location",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe mode",
                    subtitle: "Search result is safe for all ages",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD image quality",
                    subtitle: "Set image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// --- Logout Button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text("Logout")),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections * 2.5,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
