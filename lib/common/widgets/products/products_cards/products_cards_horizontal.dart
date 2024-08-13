import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:flutter_ecommerce/common/widgets/images/t_rounded_images.dart';
import 'package:flutter_ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ecommerce/common/widgets/texts/t_brand_title_vertical_icon.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/contants/colors.dart';
import '../../../../utils/contants/image_string.dart';
import '../../../../utils/contants/size.dart';
import '../../../styles/shadow_style.dart';
import '../../icon/t_circular_icon.dart';

class TProductsCardsHorizontal extends StatelessWidget {
  const TProductsCardsHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.softGrey,
      ),
      child: Row(
        children: [
          /// -Thumbnail
          TRoundedContainer(
            width: 120,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: dark? TColors.dark: TColors.light,
            child: Stack(
              children: [
                /// --Thumbnail image
                SizedBox(
                  height: 120,
                    width: 120,
                    child: TRoundedImage(imageUrl: TImage.productImage1, applyImageRadius: true,)
                ),

                /// --sale  tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
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
                ),
                const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    )
                ),
              ],
            ),
          ),

          /// -Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: TSizes.sm,left: TSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(title: "Green Nike Sports Shoe", smallSize: true,),
                      SizedBox(height: TSizes.spaceBtwItems/2,),

                      TBrandTitleWithVerticalIcon(title: "Nike"),
                    ],
                  ),

                  Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// -Pricing
                      Flexible(child: TProductPriceText(price: "250.0")),

                      /// -Add to cart Button
                      Container(
                        decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                              Radius.circular(TSizes.productImageRadius),
                            )),
                        child: const SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height: TSizes.iconLg * 1.2,
                            child: Center(
                              child: Icon(
                                Iconsax.add,
                                color: TColors.white,
                              ),
                            )),
                      )

                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
