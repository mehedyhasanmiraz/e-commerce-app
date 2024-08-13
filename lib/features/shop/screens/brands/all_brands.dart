import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:flutter_ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:flutter_ecommerce/common/widgets/products/products_cards/products_cards_horizontal.dart';
import 'package:flutter_ecommerce/common/widgets/products/sortable/sortable_products.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce/features/shop/screens/brands/brand_products.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(title: Text("Brand"),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -Heading
              TSectionHeading(title: "Brands",showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems,),

              /// -Brands
              TGridLayout(
                  itemCount: 12,
                  mainAxisExtent: 80,
                  itemBuilder: (_,index)=> TBrandCard(showBorder: true,
                  onTap: ()=> Get.to(()=> BrandProducts()),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
