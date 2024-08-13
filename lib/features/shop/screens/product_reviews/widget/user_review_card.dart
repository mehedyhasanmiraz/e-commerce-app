import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/circular_container.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:flutter_ecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/contants/colors.dart';
import '../../../../../utils/contants/image_string.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(TImage.userProfileImage1),
                ),
                SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text(
                  "Mehedy Hasan",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        /// -Reviews
        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              "14-07-2024",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        ReadMoreText(
          "Created for the hardwood but taken to the streets,the Nike Dunk Low Retro returns with crisp overlays and original team colors. This basketball icon channels '80s vibes with premium leather in the upper that looks good and breaks in even better.",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: "Readmore",
          trimExpandedText: "Showless",
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        SizedBox(height: TSizes.spaceBtwItems,),


        /// -Company Reviews
        TRoundedContainer(
          backgroundColor: dark? TColors.darkerGrey: TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Arobil Ltd", style: Theme.of(context).textTheme.titleMedium,),
                    Text("15-07-2024", style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                ReadMoreText(
                  "Created for the hardwood but taken to the streets,the Nike Dunk Low Retro returns with crisp overlays and original team colors. This basketball icon channels '80s vibes with premium leather in the upper that looks good and breaks in even better.",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "Readmore",
                  trimExpandedText: "Showless",
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: TColors.primary),
                  lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: TSizes.spaceBtwSections,),


      ],
    );
  }
}
