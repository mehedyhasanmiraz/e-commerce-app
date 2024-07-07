import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/search_container.dart';
import 'package:flutter_ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:flutter_ecommerce/common/widgets/product_carts/cart_menu_icon.dart';
import 'package:flutter_ecommerce/common/widgets/texts/t_brand_title_vertical_icon.dart';
import 'package:flutter_ecommerce/utils/contants/enums.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/contants/colors.dart';


class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text("Store",style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCartCounterIcon(onPressed: (){}, iconColor: dark?TColors.white: TColors.dark,)
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_,innerBoxIsScrolled){
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunction.isDarkMode(context)? TColors.black: TColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(
              padding: EdgeInsets.all(TSizes.spaceBtwItems),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ///--SearchBar
                  SizedBox(height: TSizes.defaultSpace,),
                  TSearchContainer(text: "Search in Store",showBorder: true,showBackground: false,
                  padding: EdgeInsets.zero,),
                  SizedBox(height: TSizes.spaceBtwSections,),


                  ///--Featured Brands
                  TSectionHeading(title: "Features Brands",showActionButton: true,onPressed: (){},),
                  SizedBox(height: TSizes.spaceBtwItems/1.5,),

                  TGridLayout(itemCount: 4, mainAxisExtent: 80,itemBuilder: (_,index){
                    return GestureDetector(
                      onTap: (){},
                      child: TRoundedContainer(
                        padding: EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            ///--Icon
                            Flexible(
                              child: TCircularImage(
                                image: TImage.clothIcon,
                                isNetworkImage: false,
                                backgroundColor: Colors.transparent,
                                overlayColor: THelperFunction.isDarkMode(context)?TColors.white:TColors.black,
                              ),
                            ),
                            SizedBox(width: TSizes.spaceBtwItems/2,),

                            ///--Text
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TBrandTitleWithVerticalIcon(title: "Reymond",brandTextSize: TextSizes.large,),
                                  Text("256 Products in stock",
                                    style: Theme.of(context).textTheme.labelMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                              
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
          )
        ];
      },
          body: Container(

          )
      ),
    );
  }
}


