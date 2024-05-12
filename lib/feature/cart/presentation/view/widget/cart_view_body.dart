import 'package:e_commerce/feature/cart/presentation/manage/cubit/cart_cubit.dart';
import 'package:e_commerce/feature/cart/presentation/manage/cubit/cart_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/errors/custom_error.dart';
import 'cart_list_view_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>CartCubit()..getCart(),
      child: BlocConsumer<CartCubit, CartStates>(
        listener: (context, state) {},
        builder: (context, state) {
          if(state is CartSuccessStates){
            return const CartListViewItemSection();
          }
          else if (state is CartErrorStates) {
            return CustomError(text: state.error);
          }
          else{
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

}