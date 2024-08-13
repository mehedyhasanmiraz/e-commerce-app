import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);

    return Column(
      children: [
        TSectionHeading(title: "Payment Method", buttonTitle: "Change", onPressed: (){},),
        SizedBox(height: TSizes.spaceBtwItems/2,),

        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark? TColors.light: TColors.white,
              padding: EdgeInsets.all(TSizes.sm),
              child: Image(image: AssetImage(TImage.paypal,),fit: BoxFit.contain,),
            ),
            SizedBox(width: TSizes.spaceBtwItems/2,),
            Text("Paypal", style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
