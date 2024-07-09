import 'package:flutter/material.dart';

import '../../../utils/contants/colors.dart';
import '../../../utils/contants/size.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shape/containers/rounded_container.dart';
import 'brand_card.dart';

class TBrandShowCase extends StatelessWidget {

  final List<String> image;

  const TBrandShowCase({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      borderColor: TColors.darkGrey,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.defaultSpace),
      child: Column(
        children: [
          ///--Brand with product count
          const TBrandCard(showBorder: false),

          ///Brand with product image
          Row(
              children: image.map((image)=> brandTopProductWidgetImage(image, context)).toList()

          )
        ],
      ),
    );
  }

  Widget brandTopProductWidgetImage (String image, context){
    return Expanded(
        child: TRoundedContainer(
          height: 100,
          backgroundColor: THelperFunction.isDarkMode(context)? TColors.darkGrey:TColors.light,
          margin: const EdgeInsets.only(right: TSizes.sm),
          padding: const EdgeInsets.all(TSizes.md),
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.contain,
          ),
        ));
  }
}