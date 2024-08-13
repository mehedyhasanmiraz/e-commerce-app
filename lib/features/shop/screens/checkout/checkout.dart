import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:flutter_ecommerce/common/widgets/success_button/success_screen.dart';
import 'package:flutter_ecommerce/features/shop/screens/cart/widget/cart_item.dart';
import 'package:flutter_ecommerce/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:flutter_ecommerce/features/shop/screens/checkout/widget/billing_amount_section.dart';
import 'package:flutter_ecommerce/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:flutter_ecommerce/navigation_menu.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../common/widgets/products/carts/coupon_widget.dart';
import '../../../../utils/contants/colors.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "Order Reviews",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -Items in Cart
              TCartItems(
                showAddAndRemoveButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// -Coupon textfields
              TCouponCode(),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),


              /// -Billing section
              TRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(TSizes.md),
                child: Column(
                  children: [
                    /// -Price
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    /// -Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    /// -Payment Method
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    /// -Address
                    TBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(TSizes.sm),
        child: ElevatedButton(
          onPressed: ()=> Get.to(() =>SuccessScreen(
              image: TImage.successfulPaymentIcon,
              title: "Payment Success",
              subTitle: "Your item will be shipped soon! ",
              onPressed: ()=> Get.offAll(()=>NavigationMenu()))),
          child: Text("Checkout \$256.0"),
        ),
      ),
    );
  }
}


