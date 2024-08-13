import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:iconsax/iconsax.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        Text(
          "Arobil ltd",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Row(
          children: [
            Icon(
              Icons.phone,
              size: 16,
              color: TColors.darkGrey,
            ),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              "+88 01834762690",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            Icon(
              Icons.location_history,
              size: 16,
              color: TColors.darkGrey,
            ),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Expanded(
                child: Text(
              "Banani,Dhaka-1213,Bangladesh",
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            )),
          ],
        )
      ],
    );
  }
}
