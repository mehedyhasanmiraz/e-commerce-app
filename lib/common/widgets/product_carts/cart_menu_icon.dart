import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Color iconColor;
  const TCartCounterIcon({
    super.key, required this.onPressed, required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag),color: iconColor,),
        Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: TColors.black,
              ),
              child: Center(
                child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white,fontSizeFactor: 0.8)),
              ),
            ))
      ],
    );
  }
}