import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        /// -- Title, Price & Size
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Motorola'),
              const Flexible(child: TProductTitleText(title: 'Android 14 | 12GB RAM | 256GB Internal Storage | 16INCH Super Amoled Display', maxLines: 1)),

              /// attributes
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: ' Green  ', style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: ' Size ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'IN 28', style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
