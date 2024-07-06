import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  const TProductPriceText({
    super.key,
     this.currencySign = '\$',
    required this.price,
     this.maxLines = 1,
     this.isLarge = false,
     this.lineThrough = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      style: isLarge
          ?Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough? TextDecoration.lineThrough: null)
          : Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough? TextDecoration.lineThrough: null),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
