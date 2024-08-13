import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Add New Address",),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user,),
                  labelText: "Name",
                ),),
                SizedBox(height: TSizes.spaceBtwInputFields,),

                TextFormField(decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.mobile,),
                  labelText: "Phone Number",
                ),),
                SizedBox(height: TSizes.spaceBtwInputFields,),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.building_31,),
                        labelText: "Street",
                      ),),
                    ),
                    SizedBox(width: TSizes.spaceBtwInputFields,),

                    Expanded(
                      child: TextFormField(decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.code,),
                        labelText: "Postal Code",
                      ),),
                    ),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwInputFields,),


                Row(
                  children: [
                    Expanded(
                      child: TextFormField(decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.building,),
                        labelText: "City",
                      ),),
                    ),
                    SizedBox(width: TSizes.spaceBtwInputFields,),

                    Expanded(
                      child: TextFormField(decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.activity,),
                        labelText: "State",
                      ),),
                    ),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwInputFields,),

                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.global),
                    labelText: "Country",
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwInputFields,),


                SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: (){},child: Text("Save"),),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
