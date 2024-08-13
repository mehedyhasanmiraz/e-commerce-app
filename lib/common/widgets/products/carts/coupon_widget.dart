import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';

import '../../../../utils/contants/colors.dart';
import '../../../../utils/contants/size.dart';
import '../../custom_shape/containers/rounded_container.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,

  });


  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);


    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: EdgeInsets.only(
          bottom: TSizes.sm,
          top: TSizes.sm,
          right: TSizes.sm,
          left: TSizes.md),
      child: Row(
        children: [
          /// -TextFields
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Have a promo Code? Enter Here",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// -Button
          SizedBox(
              width: 70,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark? TColors.white.withOpacity(0.5) : TColors.dark.withOpacity(0.5),
                      backgroundColor: TColors.grey.withOpacity(0.4),
                      side: BorderSide(color: TColors.grey.withOpacity(0.1))
                  ),
                  child: Text("Apply"))),
        ],
      ),
    );
  }
}