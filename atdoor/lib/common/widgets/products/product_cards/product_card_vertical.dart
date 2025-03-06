import 'package:atdoor/common/widgets/images/t_rounded_image.dart';
import 'package:atdoor/common/widgets/texts/product_title_text.dart';
import 'package:atdoor/utils/constants/colors.dart';
import 'package:atdoor/utils/constants/sizes.dart';
import 'package:atdoor/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../styles/shadow.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/t_circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// container with side padding
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Wishlist button, Discount tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  ///--- Thumbnail
                  const TRoundedImage(
                    imageUrl: TImages.productImage2,
                    applyImageRadius: true,
                  ),

                  ///--- Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  /// --- Favourite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),

            /// Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                children: [
                  TProductTitleText(
                      title: 'Moto Edge 86 (8/128)', smallSize: true),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: 'Motorola',),
                ],
              ),
            ),
            // Todo: Add Spacer() here to the height of each box same in case of 1 or 2 lines of Headings
            const Spacer(),

            /// -- Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// ---- Price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: ' 24999', isLarge: true),
                ),

                /// --- Add To Cart Button
                Container(
                  decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.productImageRadius))),
                  child: const SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg,
                      child: Center(
                          child: Icon(
                        Iconsax.add,
                        color: TColors.white,
                      ))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}




