import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

import '../../styles/spacing_style.dart';


class SuccessScreen extends StatelessWidget {
  final String image,title,subTitle;
  final VoidCallback onPressed;
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight*2,
          child: Column(
            children: [
              /// Image
              Image(image: AssetImage(image),width: THelperFunction.screenWidth(),),


              /// Title and subTitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwItems,),

              Text(subTitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwItems,),

              /// Button
              SizedBox(width: double.infinity,child: ElevatedButton(
                onPressed: onPressed,
                child: Text(TTexts.tContinue),
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
