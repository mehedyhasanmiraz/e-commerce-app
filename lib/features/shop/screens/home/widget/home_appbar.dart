import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/features/shop/screens/cart/cart.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/product_carts/cart_menu_icon.dart';
import '../../../../../utils/contants/colors.dart';
import '../../../../../utils/contants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppBarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.grey),),
          Text(TTexts.homeAppBarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),)
        ],
      ),
      actions: [
        TCartCounterIcon(onPressed: () => Get.to(()=> CartScreen()), iconColor: TColors.white,)
      ],
    );
  }
}