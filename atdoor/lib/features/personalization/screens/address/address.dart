import 'package:atdoor/common/widgets/appbar/appbar.dart';
import 'package:atdoor/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:atdoor/features/personalization/screens/address/add_new_address.dart';
import 'package:atdoor/features/personalization/screens/address/widgets/single_address.dart';
import 'package:atdoor/utils/constants/colors.dart';
import 'package:atdoor/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Iconsax.add, color: TColors.white),
      ),
      appBar: TAppBar(
          showBackArrow: true,
          title: Text('Addresses',
              style: Theme.of(context).textTheme.headlineSmall)
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress: false),
              TSingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
