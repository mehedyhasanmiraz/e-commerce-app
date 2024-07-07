import 'package:flutter/material.dart';

import '../../../utils/contants/colors.dart';
import '../../../utils/contants/size.dart';
import '../../../utils/helpers/helper_function.dart';

class TVerticalImageText extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor = TColors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            /// --circular icon
            Container(
                height: 56,
                width: 56,
                padding: EdgeInsets.all(TSizes.sm),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: backgroundColor?? (dark? TColors.white:TColors.black),
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(image,),
                    fit: BoxFit.cover,
                    color: dark? TColors.light:TColors.dark,
                  ),

                )),

            /// --Text
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}