import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/icon/t_circular_icon.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace/2),
      decoration: BoxDecoration(
        color: dark? TColors.darkerGrey: TColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(icon: Iconsax.minus,
                color: TColors.white,
                backgroundColor: TColors.darkGrey,
                height: 40,
                width: 40,
              ),
              SizedBox(width: TSizes.spaceBtwItems,),

              Text("2", style: Theme.of(context).textTheme.titleSmall,),
              SizedBox(height: TSizes.spaceBtwItems,),

              TCircularIcon(icon: Iconsax.add,
                color: TColors.white,
                backgroundColor: TColors.black,
                height: 40,
                width: 40,
              ),
            ],
          ),
          SizedBox(width: TSizes.spaceBtwItems,),
          ElevatedButton(
              onPressed: (){},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(TSizes.md),
              backgroundColor: TColors.black,
              side: BorderSide(color: TColors.black),
            ),
              child: Text("Add to Cart"),
          )
        ],
      ),
    );
  }
}
