import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/home.dart';
import 'package:flutter_ecommerce/features/shop/screens/store/store.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunction.isDarkMode(context);

    return Scaffold(

      body: Obx(()=>controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=>controller.selectedIndex.value = index,
          backgroundColor: darkMode? TColors.black:TColors.white,
          indicatorColor: darkMode? TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),
          destinations: [
             NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
             NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
             NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
             NavigationDestination(icon: Icon(Iconsax.user), label: "profile"),

          ],
        ),
      ),
    );
  }
}


class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    StoreScreen(),
    Container(color: Colors.orange,child: Center(child: Text("Wishlist")),),
    Container(color: Colors.blue,child: Center(child: Text("Profile")),)
  ];
}
