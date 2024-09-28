import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:lottie/lottie.dart';

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
              // Image(image: AssetImage(image),width: THelperFunction.screenWidth(),),
              Lottie.asset(image, width: MediaQuery.of(context).size.width *0.6),


              /// Title and subTitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Text(subTitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              /// Button
              SizedBox(width: double.infinity,child: ElevatedButton(
                onPressed: onPressed,
                child: const Text(TTexts.tContinue),
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
