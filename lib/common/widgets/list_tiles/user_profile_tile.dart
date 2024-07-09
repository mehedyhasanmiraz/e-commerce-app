import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/contants/colors.dart';
import '../../../utils/contants/image_string.dart';
import '../images/t_circular_image.dart';

class TUserProfileTile extends StatelessWidget {

  final VoidCallback onPressed;

  const TUserProfileTile({
    super.key, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100)
        ),
        child: TCircularImage(
          image: TImage.user,
          width: 50,
          height: 50,
          padding: 0,
        ),
      ),
      title: Text(
        "Mehedy Hasan Miraz",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        "mirazmehedi065@gmail.com",
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: TColors.lightGrey),
      ),
      trailing: IconButton(onPressed: onPressed,icon: Icon(Iconsax.edit, color: TColors.white,),),
    );
  }
}