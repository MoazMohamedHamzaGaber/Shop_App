import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_commerce/feature/cart/presentation/manage/cubit/cart_cubit.dart';
import 'package:e_commerce/feature/cart/presentation/manage/cubit/cart_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cart_list_view_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = CartCubit.get(context);
          return ConditionalBuilder(
            condition: state is! CartLoadingStates,
            builder: (context) => const CartListViewItemSection(),
            fallback: (context) => const Center(child: CircularProgressIndicator()),
          );
      },
    );
  }

}