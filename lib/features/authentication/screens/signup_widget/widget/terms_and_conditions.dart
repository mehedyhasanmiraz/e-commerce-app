import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';

class TermsAndConditons extends StatelessWidget {
  const TermsAndConditons({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);

    return Row(
      children: [
        SizedBox(height: 24,width: 24,child: Checkbox(value: true, onChanged: (value){},),),
        const SizedBox(width: 5,),
        Text.rich(
            TextSpan(
                children: [
                  TextSpan(text: TTexts.iAgreeTo,style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: " ${TTexts.privacyPolicy} ",style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark? TColors.white: TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark?TColors.white: TColors.primary,
                  )),
                  TextSpan(text: TTexts.and,style: Theme.of(context).textTheme.bodySmall),

                  TextSpan(text: " ${TTexts.termsOfUse}",style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark? TColors.white: TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark?TColors.white: TColors.primary,
                  )),
                ]
            ))
      ],
    );
  }
}