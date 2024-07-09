import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:flutter_ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce/common/widgets/texts/t_brand_title_vertical_icon.dart';
import 'package:flutter_ecommerce/utils/contants/enums.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/custom_shape/containers/rounded_container.dart';
import '../../../../../utils/contants/colors.dart';
import '../../../../../utils/contants/image_string.dart';
import '../../../../../utils/contants/size.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price and Sale price
        Row(
          children: [
            /// Sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text("25%",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.black)),
            ),
            SizedBox(width: TSizes.spaceBtwItems,),

            /// price
            Text("\$250", style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            SizedBox(width: TSizes.spaceBtwItems,),
            TProductPriceText(price: "175", isLarge: true,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/1.5,),

        /// Title
        TProductTitleText(title: "Green Nike sports shoes"),
        SizedBox(height: TSizes.spaceBtwItems/1.5,),

        /// Stock status
        Row(
          children: [
            TProductTitleText(title: "Status"),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium,),

          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/1.5,),
        
        /// Brand
        Row(
          children: [
            TCircularImage(image: TImage.showIcon,
              height: 32,
              width: 32,
              overlayColor: dark? TColors.white: TColors.black,
            ),
            TBrandTitleWithVerticalIcon(title: "Nike", brandTextSize: TextSizes.medium,),
          ],
        ),
      ],
    );
  }
}
