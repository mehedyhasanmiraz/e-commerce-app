import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/shop/screens/product_reviews/widget/progress_indicator_and_ratings.dart';

class TOverAllProductRatings extends StatelessWidget {
  const TOverAllProductRatings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text(
              "4.8",
              style: Theme.of(context).textTheme.displayLarge,
            )),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingsProgressIndicator(text: '5', value: 1.0,),
              TRatingsProgressIndicator(text: '4', value: 0.8,),
              TRatingsProgressIndicator(text: '3', value: 0.6,),
              TRatingsProgressIndicator(text: '2', value: 0.4,),
              TRatingsProgressIndicator(text: '1', value: 0.2,),
            ],
          ),
        )
      ],
    );
  }
}