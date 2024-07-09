import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:flutter_ecommerce/common/widgets/products/products_cards/products_cards_vertical.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand-show_case.dart';
import '../../../../../utils/contants/image_string.dart';
import '../../../../../utils/contants/size.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///--Brands
              const TBrandShowCase(image: [
                TImage.productImage3,
                TImage.productImage2,
                TImage.productImage1,

              ],),
              const TBrandShowCase(image: [
                TImage.productImage3,
                TImage.productImage2,
                TImage.productImage1,

              ],),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ///--Products
              TSectionHeading(title: "I might like", showActionButton: true, onPressed: (){},),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TGridLayout(itemCount: 4, itemBuilder: (_,index)=> const TProductCardsVertical()),
              const SizedBox(height: TSizes.spaceBtwSections,),
            ],
          ),
        ),
      ],
    );
  }
}
