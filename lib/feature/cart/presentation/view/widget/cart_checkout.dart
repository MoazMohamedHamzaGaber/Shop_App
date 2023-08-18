import 'package:e_commerce/feature/cart/presentation/manage/cubit/cart_cubit.dart';
import 'package:e_commerce/feature/cart/presentation/manage/cubit/cart_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCheckout extends StatelessWidget {
  const CartCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit,CartStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "SubTotal",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    //'${CartCubit.get(context).cartModel!.data!.total!.round()} EGP',
                    '${CartCubit.get(context).cartModel!.data!.total!.round() * CartCubit.get(context).cartModel!.data!.cartItems![0].quantity!} EGP',
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Check Out',
                    style:
                    TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
