import 'package:atdoor/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:atdoor/common/widgets/texts/section_heading.dart';
import 'package:atdoor/utils/constants/colors.dart';
import 'package:atdoor/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){}),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(TImages.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
