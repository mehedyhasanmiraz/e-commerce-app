import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/tab_bar.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/search_container.dart';
import 'package:flutter_ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:flutter_ecommerce/common/widgets/product_carts/cart_menu_icon.dart';
import 'package:flutter_ecommerce/features/shop/screens/brands/all_brands.dart';
import 'package:flutter_ecommerce/features/shop/screens/store/widget/category_tab.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/contants/colors.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: dark ? TColors.white : TColors.dark,
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: THelperFunction.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSizes.spaceBtwItems),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          ///--SearchBar
                          const SizedBox(
                            height: TSizes.defaultSpace,
                          ),
                          const TSearchContainer(
                            text: "Search in Store",
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),

                          ///--Featured Brands
                          TSectionHeading(
                            title: "Features Brands",
                            showActionButton: true,
                            onPressed: () => Get.to(()=> AllBrandsScreen()),
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwItems / 1.5,
                          ),

                          TGridLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                return const TBrandCard(showBorder: false,);
                              })
                        ],
                      ),
                    ),

                    ///-- Tabs
                    bottom: const TTabBar(tabs: [
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Furnitures"),
                      ),
                      Tab(
                        child: Text("Cloths"),
                      ),
                      Tab(
                        child: Text("Electronics"),
                      ),
                      Tab(
                        child: Text("Cosmetics"),
                      )
                    ]))
              ];
            },

            /// --Body Section
            body: const TabBarView(children: [
                  TCategoryTab(),
                  TCategoryTab(),
                  TCategoryTab(),
                  TCategoryTab(),
                  TCategoryTab(),

            ])),
      ),
    );
  }
}









