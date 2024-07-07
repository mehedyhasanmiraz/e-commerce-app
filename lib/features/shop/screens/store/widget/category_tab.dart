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
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///--Brands
              TBrandShowCase(image: [
                TImage.productImage3,
                TImage.productImage2,
                TImage.productImage1,

              ],),
              TBrandShowCase(image: [
                TImage.productImage3,
                TImage.productImage2,
                TImage.productImage1,

              ],),
              SizedBox(height: TSizes.spaceBtwItems,),

              ///--Products
              TSectionHeading(title: "I might like", showActionButton: true, onPressed: (){},),
              SizedBox(height: TSizes.spaceBtwItems,),

              TGridLayout(itemCount: 4, itemBuilder: (_,index)=> TProductCardsVertical()),
              SizedBox(height: TSizes.spaceBtwSections,),
            ],
          ),
        ),
      ],
    );
  }
}
