import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:flutter_ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/choice_chip/choice_chip.dart';
import '../../../../../utils/contants/colors.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Column(
      children: [
        /// -Selected attributes price and description
        TRoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// - Title, price and stock status
              Row(
                children: [
                  TSectionHeading(
                    title: "Variation",
                    showActionButton: false,
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          TProductTitleText(
                            title: "Price: ",
                            smallSize: true,
                          ),

                          ///- Actual price
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),

                          ///- Sale price
                          TProductPriceText(price: "20"),
                        ],
                      ),

                      /// -Stock
                      Row(
                        children: [
                          TProductTitleText(
                            title: "Stock: ",
                          ),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),

              /// -Variation description
              TProductTitleText(
                title:
                    "This is the description of products and it can go up to max 4 lines",
                maxLine: 4,
                smallSize: true,
              )
            ],
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        /// - Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: "Colors", showActionButton: false,),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: true,onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'Red', selected: false,onSelected: (value){},),

              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: "Size", showActionButton: false,),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 32', selected: true,onSelected: (value){},),
                TChoiceChip(text: 'EU 36', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'EU 38', selected: false,onSelected: (value){},),
              ],
            )
          ],
        ),
      ],
    );
  }
}


