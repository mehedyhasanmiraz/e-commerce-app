import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/password_configeration/forget_password.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup_widget/signup.dart';
import 'package:flutter_ecommerce/navigation_menu.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TForm extends StatelessWidget {
  const TForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              /// email
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email_outlined),
                  labelText: TTexts.email,
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),

              /// Password
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.password_sharp),
                    labelText: TTexts.password,
                    suffixIcon: Icon(Icons.remove_red_eye_sharp)),
              ),
              SizedBox(
                height: TSizes.spaceBtwInputFields / 2,
              ),

              /// Remember Me and Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Remember Me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text(TTexts.rememberMe),
                    ],
                  ),

                  /// Forget Password
                  TextButton(
                      onPressed: () => Get.to(()=>ForgetPassword()),
                      child: Text(TTexts.forgetPassword))
                ],
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// SingIn button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(()=>NavigationMenu()),
                  child: Text(TTexts.signIn),
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// create account button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Get.to(()=>SignupScreen()),
                  child: Text(TTexts.createAccount),
                ),
              ),

            ],
          ),
        ));
  }
}