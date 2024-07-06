import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/success_button/success_screen.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.to(()=>LoginScreen()), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
                Image(image: AssetImage(TImage.deliveredEmailIllustration),width: THelperFunction.screenWidth(),),


              /// Title and subTitle
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwItems,),
              Text("mirazmehedi065@gmail.com",style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwItems,),

              /// Button
              SizedBox(width: double.infinity,child: ElevatedButton(
                onPressed: ()=>Get.to(()=>SuccessScreen(
                  image: TImage.staticSuccessIllustration,
                  title: TTexts.yourEmailCreatedTitle,
                  subTitle: TTexts.yourEmailCreatedSubTitle,
                  onPressed: ()=> Get.to(()=>LoginScreen()),
                )),
                child: Text(TTexts.tContinue),
              ),),
              SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){

              },child: Text(TTexts.reSendEmail),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
