import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/containers/circular_container.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/curved_edge/curved_edge_widget.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;

  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,

        child: Stack(
          children: [
            /// Background custom shape
            Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(backgroundColor: TColors.TextWhite.withOpacity(0.1),)),
            Positioned(
                top: 10,
                right: 0,
                child: TCircularContainer(backgroundColor: TColors.TextWhite.withOpacity(0.1),),),
            child,
          ],
        ),
      ),
    );
  }
}