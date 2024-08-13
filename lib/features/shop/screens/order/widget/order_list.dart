import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_function.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItem extends StatelessWidget {
  const TOrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return ListView.separated(
      shrinkWrap: true,
        separatorBuilder: (_,__)=> SizedBox(height: TSizes.spaceBtwItems,),
        itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      // scrollDirection: Axis.vertical,
      itemBuilder: (_,index) => TRoundedContainer(
          showBorder: true,
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.dark : TColors.light,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// -Row-1
                Row(
                  children: [
                    /// 1-Icon
                    Icon(
                      Iconsax.ship,
                    ),
                    SizedBox(
                      width: TSizes.spaceBtwItems / 2,
                    ),

                    /// 2-Status and Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Processing",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .apply(color: TColors.primary, fontWeightDelta: 1),
                          ),
                          Text(
                            "15-07-2024",
                            style: Theme.of(context).textTheme.headlineSmall,
                          )
                        ],
                      ),
                    ),

                    /// 3-Icon
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Iconsax.arrow_right_34,
                        size: TSizes.iconSm,
                      ),
                    )
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwItems,),

                /// Row-2
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          /// 1-Icon
                          Icon(
                            Iconsax.tag,
                          ),
                          SizedBox(
                            width: TSizes.spaceBtwItems / 2,
                          ),

                          /// 2-Status and Date
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Order",
                                  style: Theme.of(context).textTheme.labelMedium, ),
                                Text(
                                  "#123456",
                                  style: Theme.of(context).textTheme.titleMedium,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),



                    Expanded(
                      child: Row(
                        children: [
                          /// 1-Icon
                          Icon(
                            Iconsax.calendar,
                          ),
                          SizedBox(
                            width: TSizes.spaceBtwItems / 2,
                          ),

                          /// 2-Status and Date
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Shipping Date",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium,
                                ),
                                Text(
                                  "20-07-2024",
                                  style: Theme.of(context).textTheme.titleMedium,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ])),
    );
  }
}
