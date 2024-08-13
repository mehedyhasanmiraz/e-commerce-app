import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';

import '../../../../utils/contants/colors.dart';
import '../../../../utils/contants/image_string.dart';
import '../../../../utils/contants/size.dart';
import '../../images/t_rounded_images.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_vertical_icon.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      children: [
        /// -Image
        TRoundedImage(imageUrl: TImage.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: dark? TColors.darkerGrey: TColors.light,
        ),


        /// -Title, price and size
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TBrandTitleWithVerticalIcon(title: "Nike"),
              Flexible(child: TProductTitleText(title: "The Green sports shoe",
                maxLine: 1,)),


              /// -Attributes
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: "Color", style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "Green", style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: "Size", style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "Uk-08", style: Theme.of(context).textTheme.bodyLarge),
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
