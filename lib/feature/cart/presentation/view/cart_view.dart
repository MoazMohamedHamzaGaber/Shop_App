import 'package:e_commerce/core/utils/constant.dart';
import 'package:flutter/material.dart';

import 'widget/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appBar(text: 'Cart',context: context),
      body: const CartViewBody(),
    );
  }
}
