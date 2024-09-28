import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/styles/spacing_style.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/wodget/login_form.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/wodget/login_header.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo, title, subTitle
              TLoginHeader(dark: dark,),

              /// Form
               const TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              /// Footer
              const TSocilaButton()
            ],
          ),
        ),
      ),
    );
  }
}








