import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/circular_container.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:flutter_ecommerce/common/widgets/products/products_cards/products_cards_vertical.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widget/home_appbar.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widget/home_categories.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widget/promo_slider.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/devices/device_utility.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../common/widgets/image_text_widget/vertical_image_text_widget.dart';
import '../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/product_carts/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/contants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TPrimaryHeaderContainer(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// --Appbar
              THomeAppBar(),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// --Searchbar
              TSearchContainer(
                text: 'Search in store',
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// --Categories
              Padding(
                padding: EdgeInsets.only(left: TSizes.spaceBtwItems),
                child: Column(
                  children: [
                    /// --Heading
                    TSectionHeading(
                      title: 'Popular Categories',
                      onPressed: (){},
                      showActionButton: false,
                      textColor: TColors.white,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    /// --Categories
                    THomeCategories()
                  ],
                ),
              ),
            ],
          )),

          /// -Body part
          Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// --Promo Slider
                  TPromoSlider(
                    banners: [
                      TImage.promoBanner1,
                      TImage.promoBanner2,
                      TImage.promoBanner3,
                      TImage.promoBanner4
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// --Popular Products
                  TGridLayout(itemCount: 4, itemBuilder: (BuildContext , int )=>TProductCardsVertical(),),
                ],
              ))
        ]),
      ),
    );
  }
}


