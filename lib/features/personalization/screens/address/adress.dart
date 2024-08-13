

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/features/personalization/screens/address/add_new_address.dart';
import 'package:flutter_ecommerce/features/personalization/screens/address/widget/single_address.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/contants/colors.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Get.to(() => AddNewAddressScreen()),
        child: Icon(Iconsax.add,color: TColors.white,),
        backgroundColor: TColors.primary,
      ),
      appBar: TAppBar(title: Text("Address", style: Theme.of(context).textTheme.headlineMedium,),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress: true,),
              TSingleAddress(selectedAddress: false,),
              TSingleAddress(selectedAddress: false,),
              TSingleAddress(selectedAddress: false,),
              TSingleAddress(selectedAddress: false,),
            ],
          ),
        ),
      ),
    );
  }
}
