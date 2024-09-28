import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/controllers/login/login_controller.dart';
import 'package:flutter_ecommerce/features/authentication/screens/password_configeration/forget_password.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup_widget/signup.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:flutter_ecommerce/utils/validators/velidators.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {

  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    final controller = Get.put(LoginController());

    
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email Field
            TextFormField(
              controller: controller.email,
              validator: (value) => TValidator.validateEmail(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: TTexts.email,
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            /// Password Field
            Obx(() => TextFormField(
              controller: controller.password,
              validator: (value) => TValidator.validPassword(value,),
              obscureText: controller.hidePassword.value,
              decoration:  InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                    onPressed: ()=> controller.hidePassword.value = !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value? Iconsax.eye_slash: Iconsax.eye)),
              ),
            ),
            ),
            SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),

            /// Remember Me and Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Obx(
                      ()=> Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) {
                          controller.rememberMe.value = !controller.rememberMe.value;
                        },
                      ),
                    ),
                    Text(TTexts.rememberMe),
                  ],
                ),

                /// Forgot Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: Text(TTexts.forgetPassword),
                ),
              ],
            ),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.emailAndPasswordSingIn(),
                child: Text(TTexts.signIn),
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );

  }
}