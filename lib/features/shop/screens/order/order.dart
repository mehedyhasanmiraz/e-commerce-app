import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appBar/app_bar.dart';
import 'package:flutter_ecommerce/features/shop/screens/order/widget/order_list.dart';
import 'package:flutter_ecommerce/utils/contants/size.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: TAppBar(
        title: Text("My Orders", style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -Orders
              TOrderListItem(),
            ],
          ),
        ),
      ),
    );
  }
}
