import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/contants/size.dart';
import '../../layout/grid_layout.dart';
import '../products_cards/products_cards_vertical.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        /// -Dropdown
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            "Name",
            "Higher price",
            "Lower price",
            "Sale",
            "Newest",
            "Popularity"
          ].map((option)=>DropdownMenuItem(value:option,child: Text(option))).toList(),
        ),
        SizedBox(height: TSizes.spaceBtwSections,),

        /// -Products
        TGridLayout(itemCount: 10,
            itemBuilder: (_,index) => TProductCardsVertical()
        )
      ],
    );
  }
}