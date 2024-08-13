import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/common/widgets/images/t_rounded_images.dart';
import 'package:flutter_ecommerce/common/widgets/products/products_cards/products_cards_horizontal.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text("Sports"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -Banner
              TRoundedImage(
                  imageUrl: TImage.promoBanner4,
                  width: double.infinity,
                applyImageRadius: true,
              ),
              SizedBox(height: TSizes.spaceBtwSections,),


              /// -Sub-categories
              Column(
                children: [
                  /// -Heading
                  TSectionHeading(title: "Sports shirts", onPressed: (){},),
                  SizedBox(height: TSizes.spaceBtwItems/2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                        separatorBuilder: (context,index)=> SizedBox(width: TSizes.spaceBtwItems,),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context,index)=> TProductsCardsHorizontal()
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
