import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/contants/colors.dart';
import '../../../../utils/contants/size.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../icon/t_circular_icon.dart';

class TProductQuantityAddAndRemoveButton extends StatelessWidget {
  const TProductQuantityAddAndRemoveButton({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      children: [
        /// Remove Buttons
        TCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: dark? TColors.white: TColors.black,
          backgroundColor: dark? TColors.darkerGrey: TColors.light,
        ),
        SizedBox(width: TSizes.spaceBtwItems,),
        Text("2", style: Theme.of(context).textTheme.titleSmall,),
        SizedBox(width: TSizes.spaceBtwItems,),

        TCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: TColors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}