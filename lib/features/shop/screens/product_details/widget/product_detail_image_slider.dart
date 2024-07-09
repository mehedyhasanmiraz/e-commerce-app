import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appBar/app_bar.dart';
import '../../../../../common/widgets/custom_shape/curved_edge/curved_edge_widget.dart';
import '../../../../../common/widgets/icon/t_circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../../utils/contants/colors.dart';
import '../../../../../utils/contants/image_string.dart';
import '../../../../../utils/contants/size.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);

    return TCurvedEdgeWidget(
      child: Container(
        color: dark? TColors.darkGrey: TColors.white,
        child: Stack(
          children: [
            /// main lage image-1
            SizedBox(height: 400,child: Padding(
              padding: const EdgeInsets.all(TSizes.productImageRadius*2),
              child: Center(child: Image(image: AssetImage(TImage.productImage1))),
            )),

            /// image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_,__)=> SizedBox(width: TSizes.spaceBtwItems,),
                  itemCount: 6,
                  itemBuilder: (_,index)=> TRoundedImage(
                      width: 80,
                      backgroundColor: dark? TColors.dark:TColors.white,
                      border: Border.all(color:TColors.primary),
                      padding: EdgeInsets.all(TSizes.sm),
                      imageUrl: TImage.productImage2),
                ),
              ),
            ),


            /// App Bar Icon
            TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}