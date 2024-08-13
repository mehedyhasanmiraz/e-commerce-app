import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/contants/colors.dart';
import '../../../../../utils/contants/size.dart';

class TSingleAddress extends StatelessWidget {

  final bool selectedAddress;

  const TSingleAddress({super.key, required this.selectedAddress});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);

    return TRoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? TColors.primary.withOpacity(0.5): Colors.transparent,
      borderColor: selectedAddress? Colors.transparent: dark? TColors.darkerGrey: TColors.grey,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      padding: EdgeInsets.all(TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress? Iconsax.tick_circle5:null,
              color: selectedAddress? dark? TColors.light: TColors.dark: null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mehedy Hasan Miraz",maxLines: 2,overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: TSizes.sm/2,),
              Text("+88 01834762690",maxLines: 1,overflow: TextOverflow.ellipsis,),
              SizedBox(height: TSizes.sm/2,),
              Text("H-21, R-17,Block-C/A,Banani, Dhaka-1213 ",
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
