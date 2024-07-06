import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup_widget/verify_email.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup_widget/widget/terms_and_conditions.dart';

import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });



  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);
    return Form(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// first and last name
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Icons.person_outline)
                ),
              ),
            ),
            SizedBox(width: TSizes.spaceBtwInputFields,),
            Expanded(child: TextFormField(
              expands: false,
              decoration: InputDecoration(
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Icons.person_outline)
              ),
            )),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwInputFields,),

        /// user name
        TextFormField(
          expands: false,
          decoration: InputDecoration(
              labelText: TTexts.userName,
              prefixIcon: Icon(Icons.person_search_rounded)
          ),
        ),
        SizedBox(height: TSizes.spaceBtwInputFields,),
        /// email
        TextFormField(
          expands: false,
          decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Icons.mark_email_read_outlined)
          ),
        ),
        SizedBox(height: TSizes.spaceBtwInputFields,),

        /// phone number
        TextFormField(
          expands: false,
          decoration: InputDecoration(
              labelText: TTexts.phoneNumber,
              prefixIcon: Icon(Icons.call)
          ),
        ),
        SizedBox(height: TSizes.spaceBtwInputFields,),

        /// password
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: TTexts.password,
            prefixIcon: Icon(Icons.password),
            suffixIcon: Icon(Icons.remove_red_eye_sharp),
          ),
        ),
        SizedBox(height: TSizes.spaceBtwInputFields,),

        /// terms and condition checkbox
        TermsAndConditons(),
        SizedBox(height: TSizes.spaceBtwItems,),

        /// signup button
        SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=> Get.to(()=> VerifyEmailScreen())

          ,child: Text(TTexts.createAccount),),)
      ],
    ));
  }
}

