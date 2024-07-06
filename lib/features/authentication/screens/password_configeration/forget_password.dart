import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/password_configeration/reset_password.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Headings
              Text(TTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
              SizedBox(height: TSizes.spaceBtwItems*2),
              ///TextField
              TextFormField(
                decoration: InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)
                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems,),

              ///Submit button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: ()=> Get.off(()=>ResetPassword()),
                    child: Text(TTexts.submit)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
