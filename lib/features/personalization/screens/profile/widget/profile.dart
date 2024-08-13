import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/common/widgets/images/t_circular_image.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:flutter_ecommerce/utils/contants/image_string.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/contants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),

      ///--Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(
                      image: TImage.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {}, child: Text("Change Profile Picture"))
                  ],
                ),
              ),

              /// Details

              SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              ///-- Heading Profile info
              TSectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              TProfileMenu(title: 'Name', value: 'Shopping this shop', onPressed: () {  },),
              TProfileMenu(title: 'User Name', value: 'Shopping this shop', onPressed: () {  },),

              SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ///-- Heading Personal info
              TSectionHeading(title: "Personal Information",showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(onPressed: (){}, title: "User ID", value: "34567",icon: Iconsax.copy,),
              TProfileMenu(onPressed: (){}, title: "Email", value: "mirazmehedi065@gamil.com"),
              TProfileMenu(onPressed: (){}, title: "Phone Number", value: "+88 123456789"),
              TProfileMenu(onPressed: (){}, title: "Gender", value: "Male"),
              TProfileMenu(onPressed: (){}, title: "Date of Birth", value: "05/05/2001"),
              SizedBox(height: TSizes.spaceBtwItems,),


              Center(
                child: TextButton(
                  onPressed: (){},
                  child: Text("Close Account",style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


