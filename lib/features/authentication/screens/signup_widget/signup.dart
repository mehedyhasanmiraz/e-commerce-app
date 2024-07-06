import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup_widget/widget/signup_form.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// title
              Text( TTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: TSizes.spaceBtwSections,),

              /// SignUp form
              SignUpForm(),
              SizedBox(height: TSizes.spaceBtwItems,),
              /// Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!,),
              SizedBox(height: TSizes.spaceBtwItems,),
              /// social
              TSocilaButton()
            ],
          ),
        ),
      ),
    );
  }
}


