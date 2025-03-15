import 'package:atdoor/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:atdoor/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:atdoor/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:atdoor/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:atdoor/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:atdoor/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:atdoor/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/texts/section_heading.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            const TProductImageSlider(),

            /// Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Rating & Share
                  const TRatingAndShare(),

                  /// -- Price, Title, Stock & Brand
                  const TProductMetaData(),

                  /// -- Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// -- Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Description
                  const TSectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'The Edge (2020) uses the Snapdragon 765G processor with the Adreno 620 GPU, while the Edge+ (2020) uses the Snapdragon 865 processor with the Adreno 650 GPU.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show More',
                    trimExpandedText: ' Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// -- Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Reviews(199)', showActionButton: false,),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () => Get.to(() => const ProductReviewsScreen()))
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
