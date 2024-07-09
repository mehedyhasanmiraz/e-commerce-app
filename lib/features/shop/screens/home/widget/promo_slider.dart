import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/shop/controllers/home_controller.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shape/containers/circular_container.dart';
import '../../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../../utils/contants/size.dart';

class TPromoSlider extends StatelessWidget {
  final List<String> banners;

  const TPromoSlider({
    super.key, required this.banners,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index,_) => controller.updatePageIndicator(index)
          ),
          items: banners.map((url)=> TRoundedImage(imageUrl: url)).toList()
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Center(
          child: Obx(
            ()=> Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i=0; i<banners.length; i++)
                  TCircularContainer(
                    height: 5,
                    width: 20,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i? TColors.primary: TColors.grey,
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}