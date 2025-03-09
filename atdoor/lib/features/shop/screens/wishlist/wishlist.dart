import 'package:atdoor/common/widgets/appbar/appbar.dart';
import 'package:atdoor/common/widgets/icons/t_circular_icon.dart';
import 'package:atdoor/common/widgets/layouts/grid_layout.dart';
import 'package:atdoor/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:atdoor/features/shop/screens/home/home.dart';
import 'package:atdoor/utils/constants/colors.dart';
import 'package:atdoor/utils/constants/sizes.dart';
import 'package:atdoor/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: dark ? TColors.white : TColors.dark)),
        actions: [
          TCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
