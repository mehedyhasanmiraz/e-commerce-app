import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/contants/colors.dart';

class TAnimationLoaderWidget extends StatelessWidget {
  /// Default constructor for the TAnimationLoaderWidget
  ///
  /// Parameters:
  ///  -text: The text to be deployed below the animation
  ///  -animation: The path to the lottie animation file
  ///  -showAction: Whether to show the action button below the text
  ///   -actionText: The text to be deployed on the action button
  ///   -onActionPressed: callBack function to be executed when  the action button is passed
  const TAnimationLoaderWidget(
      {super.key,
      required this.text,
      required this.animation,
      required this.showAction,
      this.actionText,
      this.onActionPressed});

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset(animation, width: MediaQuery.of(context).size.width*0.8),
          SizedBox(height: TSizes.defaultSpace,),

          Text(text, style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
          SizedBox(height: TSizes.defaultSpace,),

          showAction? SizedBox(
            width: 250,
            child: OutlinedButton(onPressed: onActionPressed,
                style: OutlinedButton.styleFrom(backgroundColor: TColors.dark),
                child: Text(actionText!,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.light),
                )),
          ): SizedBox(),

        ],
      )
    );
  }
}
