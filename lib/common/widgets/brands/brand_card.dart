import 'package:flutter/material.dart';

import '../../../utils/contants/colors.dart';
import '../../../utils/contants/enums.dart';
import '../../../utils/contants/image_string.dart';
import '../../../utils/contants/size.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shape/containers/rounded_container.dart';
import '../images/t_circular_image.dart';
import '../texts/t_brand_title_vertical_icon.dart';

class TBrandCard extends StatelessWidget {
  final bool showBorder;
  final void Function()? onTap;

  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      ///--Container Design
      child: TRoundedContainer(
        padding: EdgeInsets.all(TSizes.sm),
        showBorder: true,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///--Icon
            Flexible(
              child: TCircularImage(
                image: TImage.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: dark
                    ? TColors.white
                    : TColors.black,
              ),
            ),
            SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),

            ///--Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TBrandTitleWithVerticalIcon(
                    title: "Reymond",
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    "256 Products in stock",
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}