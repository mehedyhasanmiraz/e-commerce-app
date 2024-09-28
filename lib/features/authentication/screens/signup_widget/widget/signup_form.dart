import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/controllers/signup/signup_controller.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup_widget/widget/terms_and_conditions.dart';

import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/contants/text_strings.dart';
import 'package:flutter_ecommerce/utils/validators/velidators.dart';

// import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    // final dark = THelperFunction.isDarkMode(context);

    return Form(
        key: controller.signupFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// first and last name
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.firstName,
                    validator: (value) =>
                        TValidator.emptyTextValidate("First Name", value),
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.firstName,
                        prefixIcon: Icon(Icons.person_outline)),
                  ),
                ),
                const SizedBox(
                  width: TSizes.spaceBtwInputFields,
                ),
                Expanded(
                    child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.emptyTextValidate("Last Name", value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Icons.person_outline)),
                )),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            /// user name
            TextFormField(
              controller: controller.username,
              validator: (value) =>
                  TValidator.emptyTextValidate("User Name", value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.userName,
                  prefixIcon: Icon(Icons.person_search_rounded)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            /// email
            TextFormField(
              controller: controller.email,
              validator: (value) => TValidator.validateEmail(value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Icons.mark_email_read_outlined)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            /// phone number
            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => TValidator.validatePhoneNumber(value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.phoneNumber, prefixIcon: Icon(Icons.call)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            /// password
            Obx(() => TextFormField(
                controller: controller.password,
                validator: (value) => TValidator.validPassword(value),
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
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            /// terms and condition checkbox
            const TermsAndConditons(),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            /// signup button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.signup(),
                child: const Text(TTexts.createAccount),
              ),
            )
          ],
        ));
  }
}
