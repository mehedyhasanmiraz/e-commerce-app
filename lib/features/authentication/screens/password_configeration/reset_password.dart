import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back, icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Image
              Image(image: const AssetImage(TImage.deliveredEmailIllustration),width: THelperFunction.screenWidth(),),


              /// Title and subTitle
              Text(TTexts.changePasswordTitle, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Text(TTexts.changePasswordSubTitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              /// Button
              SizedBox(width: double.infinity,child: ElevatedButton(
                onPressed: ()=>Get.off(()=>const LoginScreen()),
                child: const Text(TTexts.done),
              ),),
              const SizedBox(height: TSizes.spaceBtwItems,),

              SizedBox(width: double.infinity,child: TextButton(
                onPressed: (){},
                child: const Text(TTexts.reSendEmail),
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
