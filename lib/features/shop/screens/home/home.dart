import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:flutter_ecommerce/common/widgets/products/products_cards/products_cards_vertical.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widget/home_appbar.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widget/home_categories.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widget/promo_slider.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import '../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

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
              const THomeAppBar(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// --Searchbar
              const TSearchContainer(
                text: 'Search in store',
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// --Categories
              Padding(
                padding: const EdgeInsets.only(left: TSizes.spaceBtwItems),
                child: Column(
                  children: [
                    /// --Heading
                    TSectionHeading(
                      title: 'Popular Categories',
                      onPressed: (){},
                      showActionButton: false,
                      textColor: TColors.white,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    /// --Categories
                    const THomeCategories()
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
                  const TPromoSlider(
                    banners: [
                      TImage.promoBanner1,
                      TImage.promoBanner2,
                      TImage.promoBanner3,
                      TImage.promoBanner4
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// --Popular Products
                  TGridLayout(itemCount: 4, itemBuilder: (BuildContext , int )=>const TProductCardsVertical(),),
                ],
              ))
        ]),
      ),
    );
  }
}


