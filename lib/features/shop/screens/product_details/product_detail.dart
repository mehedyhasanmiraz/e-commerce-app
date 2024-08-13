import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/curved_edge/curved_edge_widget.dart';
import 'package:flutter_ecommerce/common/widgets/icon/t_circular_icon.dart';
import 'package:flutter_ecommerce/common/widgets/images/t_rounded_images.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_details/widget/bottom_add_to_cart.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_details/widget/products_attributes.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_details/widget/rating_and_share_widget.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///-1 Product image slider
            TProductImageSlider(),

            ///-2 Product Details slider
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating and Share
                  TRatingAndShare(),

                  /// Price , Title, Stock and Bond
                  TProductMetaData(),

                  /// Attribute
                  TProductAttributes(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Checkout"),
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Description
                  TSectionHeading(
                    title: "Description",
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                      "Originally designed for performance running, the visible Max Air unit provides heritage "
                          "style and all-day cushioning to the shopping this shop.",
                  trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Showmore",
                    trimExpandedText: "Showless",
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  ),

                  /// Reviews
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: "Reviews (199)", showActionButton: false,),
                      IconButton(onPressed: () => Get.to(() => ProductReviewsScreen()),
                          icon: Icon(Iconsax.arrow_right_3, size: 18,))
                    ],
                  ),

                  SizedBox(height: TSizes.spaceBtwSections,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
