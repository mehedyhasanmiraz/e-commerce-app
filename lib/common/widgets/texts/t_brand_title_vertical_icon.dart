import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/texts/t_brand+title_text.dart';
import 'package:flutter_ecommerce/utils/contants/enums.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/contants/colors.dart';
import '../../../utils/contants/size.dart';

class TBrandTitleWithVerticalIcon extends StatelessWidget {
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  const TBrandTitleWithVerticalIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: TBrandTitleText(
              title: title,
              color: textColor,
              maxLines: maxLines,
              textAlign: textAlign,
              brandTextSize: brandTextSize,
            )
        ),
        const SizedBox(width: TSizes.xs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: TSizes.iconXl,
        ),
      ],
    );
  }
}
