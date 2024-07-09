import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/common/widgets/icon/t_circular_icon.dart';
import 'package:flutter_ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:flutter_ecommerce/common/widgets/products/products_cards/products_cards_vertical.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/home.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/contants/size.dart';


class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
        title: Text(
        "Wish List", style: Theme.of(context).textTheme.headlineMedium,),

          actions: [
            TCircularIcon(icon: Iconsax.add, onPressed:() => Get.to( HomeScreen()),)
          ],
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
            children: [
              TGridLayout(itemCount: 6, itemBuilder: (_,index)=> TProductCardsVertical())
          ],
        ),
        ),
      ),
    );
  }
}
