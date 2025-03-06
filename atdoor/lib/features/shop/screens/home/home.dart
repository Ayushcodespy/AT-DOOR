import 'package:atdoor/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:atdoor/features/shop/screens/home/widgets/home_categories.dart';
import 'package:atdoor/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:atdoor/utils/constants/colors.dart';
import 'package:atdoor/utils/constants/image_strings.dart';
import 'package:atdoor/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
                child: Column(
              children: [
                /// AppBar
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwSections),

                /// SearchBar
                TSearchContainer(
                  text: 'Search in store',
                ),
                SizedBox(height: TSizes.spaceBtwSections),

                /// Popular Categories Section
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      /// Heading
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: TColors.white,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),

                      /// Categories
                      THomeCategories()
                    ],
                  ),
                )
              ],
            )),

            /// Body
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: TSizes.spaceBtwItems),
              child: Column(
                children: [
                  /// Promo Slider
                  const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3, TImages.promoBanner2]),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  /// Heading
                  TSectionHeading(title: 'Popular Products', onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwSections / 2,),

                  /// Popular Products
                  TGridLayout(itemCount: 10, itemBuilder: (_, index) => const TProductCardVertical(),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}