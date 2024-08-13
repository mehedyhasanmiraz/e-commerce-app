import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:flutter_ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:flutter_ecommerce/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce/features/personalization/screens/address/adress.dart';
import 'package:flutter_ecommerce/features/shop/screens/cart/cart.dart';
import 'package:flutter_ecommerce/features/shop/screens/order/order.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/contants/colors.dart';
import '../../../../utils/contants/image_string.dart';
import '../profile/widget/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///--Header section
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                /// App Bar
                TAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),

                /// User Profile card
                TUserProfileTile(onPressed: () => Get.to(()=> ProfileScreen(),)),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            )),

            ///--Body section
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// --Account Settings
                  TSectionHeading(title: "Account Settings", showActionButton: false,),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  TSettingsMenuTile(
                    icon: (Iconsax.safe_home),
                    title: "My Address",
                    subTitle: "Set Shopping delivery address",
                    onTap: () => Get.to(() => UserAddressScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: (Iconsax.shopping_cart),
                    title: "My Cart",
                    subTitle: "Add, remove Product and move to checkout",
                      onTap: () => Get.to(() => CartScreen())
                  ),
                  TSettingsMenuTile(
                    icon: (Iconsax.bag_tick),
                    title: "My Orders",
                    subTitle: "In-progress and Complete orders",
                    onTap: () => Get.to(()=> OrderScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: (Iconsax.bank),
                    title: "Bank Account",
                    subTitle: "Withdraw balance to registered bank account",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: (Iconsax.discount_shape),
                    title: "My Coupons",
                    subTitle: "List of all the discount coupons",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: (Iconsax.notification),
                    title: "Notifications",
                    subTitle: "Set any kind of notifications message",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: (Iconsax.security_card),
                    title: "Account Privacy",
                    subTitle: "Manage data usages and connected accounts",
                    onTap: () {},
                  ),


                  /// App Settings
                  SizedBox(height: TSizes.spaceBtwSections,),
                  TSectionHeading(title: "App Settings", showActionButton: false,),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  TSettingsMenuTile(icon: (Iconsax.document_upload),
                      title: "Upload Data",
                      subTitle: "Upload data to your cloud firebase"),
                  TSettingsMenuTile(icon: (
                      Iconsax.location),
                      title: "Geolocation",
                      subTitle: "Set recommendation based on location",
                  trailing: Switch(value: true, onChanged: (value){},),
                  ),
                  TSettingsMenuTile(icon: (
                      Iconsax.security_user),
                    title: "Safe Mode",
                    subTitle: "Search result is safe for all ages",
                    trailing: Switch(value: false, onChanged: (value){},),
                  ),
                  TSettingsMenuTile(icon: (
                      Iconsax.image),
                    title: "HD Image Quality",
                    subTitle: "Set image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value){},),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
