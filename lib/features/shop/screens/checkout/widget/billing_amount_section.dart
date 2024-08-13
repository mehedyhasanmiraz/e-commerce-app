import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// -Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sub total", style: Theme.of(context).textTheme.bodyMedium,),

            Text("\$256.0", style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),

        /// -Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$6.0", style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),


        /// Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax Fee", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$16.0", style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),


        /// -Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order total", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$16.0", style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),
      ],
    );
  }
}
