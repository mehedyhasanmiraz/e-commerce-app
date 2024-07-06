import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shape/curved_edge/curved_edge.dart';

class TCurvedEdgeWidget extends StatelessWidget {
  final Widget? child;
  const TCurvedEdgeWidget({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}