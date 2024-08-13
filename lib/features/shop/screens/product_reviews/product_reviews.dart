import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_reviews/widget/progress_indicator_and_ratings.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_reviews/widget/ratings_progess_indicator.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_reviews/widget/user_review_card.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/devices/device_utility.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appBar/app_bar.dart';
import '../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../utils/contants/colors.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -AppBar
      appBar: TAppBar(
        title: Text("Reviews & Rattings"),
      ),

      /// -Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Ratings and Reviews are verified and are from people who use the same type of device that you use"),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ///- Over all product ratings
              TOverAllProductRatings(),
              TRatingBarIndicator(rating: 3.5,),
              Text("12,661", style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: TSizes.spaceBtwSections,),


              /// -User reviews list
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}






