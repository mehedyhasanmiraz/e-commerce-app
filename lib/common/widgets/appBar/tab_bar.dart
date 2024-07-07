import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/devices/device_utility.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget{

  /// If you want add to the background color to tabs you have to wrap them in material widget
  /// Todo that we need [PreferredSizeWidget] and that's why created custom class...


  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Material(
      color: dark? TColors.black:TColors.white,
      child: TabBar(
          tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
        labelColor: dark? TColors.white:TColors.primary,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
