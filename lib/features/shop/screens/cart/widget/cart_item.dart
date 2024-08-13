import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/carts/add_remove_button.dart';
import '../../../../../common/widgets/products/carts/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/contants/size.dart';

class TCartItems extends StatelessWidget {
  final bool showAddAndRemoveButton;

  const TCartItems({super.key, this.showAddAndRemoveButton = true});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => SizedBox(
        height: TSizes.spaceBtwItems,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          TCartItem(),
          if(showAddAndRemoveButton)
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          /// Add Remove Button and total price
          if(showAddAndRemoveButton)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// -Extra space
                  SizedBox(
                    width: 70,
                  ),

                  /// Add Remove Button
                  TProductQuantityAddAndRemoveButton(),
                ],
              ),

              /// -Product Total price
              TProductPriceText(price: "256")
            ],
          )
        ],
      ),
    );
  }
}
