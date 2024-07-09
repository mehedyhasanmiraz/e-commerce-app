import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/curved_edge/curved_edge_widget.dart';
import 'package:flutter_ecommerce/common/widgets/icon/t_circular_icon.dart';
import 'package:flutter_ecommerce/common/widgets/images/t_rounded_images.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_details/widget/rating_and_share_widget.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///-1 Product image slider
            TProductImageSlider(),



            ///-2 Product Details slider
            Padding(
                padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                /// Rating and Share
                TRatingAndShare(),

                /// Price , Title, Stock and Bond
                TProductMetaData(),

                /// Attribute


                /// Checkout Button



                /// Description



                /// Reviews
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}




