import 'package:e_commerce/feature/cart/presentation/manage/cubit/cart_cubit.dart';
import 'package:e_commerce/feature/cart/presentation/manage/cubit/cart_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'build_cart_item.dart';
import 'cart_checkout.dart';

class CartListViewItemSection extends StatelessWidget {
  const CartListViewItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartStates>(
      listener: (context, state) {},
      builder: (BuildContext context, Object? state) {
        if (CartCubit.get(context).cartModel!.data!.cartItems!.isNotEmpty) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => BuildCartItem(
                      model: CartCubit.get(context)
                          .cartModel!
                          .data!
                          .cartItems![index]),
                  itemCount:
                      CartCubit.get(context).cartModel!.data!.cartItems!.length,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CartCheckout(),
            ],
          );
        }
        else {
          return const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image(
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/previews/019/787/018/original/shopping-cart-icon-shopping-basket-on-transparent-background-free-png.png'))),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Your Cart Is Empty',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Sorry, the keyword you entered cannot be found,  please check again or search with another keyword.',
                  style: TextStyle(
                    fontSize: 16,
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        );
        }
      },
    );
  }
}
