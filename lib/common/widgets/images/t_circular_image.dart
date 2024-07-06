import 'package:flutter/material.dart';

import '../../../utils/contants/colors.dart';
import '../../../utils/contants/image_string.dart';
import '../../../utils/contants/size.dart';
import '../../../utils/helpers/helper_function.dart';

class TCircularImage extends StatelessWidget {
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  const TCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
     this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
     this.width = 56,
     this.height = 56,
     this.padding = TSizes.sm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor?? (THelperFunction.isDarkMode(context) ? TColors.black : TColors.light),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkImage? NetworkImage(image):AssetImage(image) as ImageProvider,
        color: overlayColor,
        fit: fit,
      ),
    );
  }
}
