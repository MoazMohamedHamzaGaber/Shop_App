import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_cubit.dart';
import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'build_item_grid_view.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeStates>(
      listener: (BuildContext context, state) {
        if(state is ChangeFavoriteSuccessStates)
          {
            if(state.changeFavoriteModel.status!) {
              showToast(
                text: state.changeFavoriteModel.message!,
                color: Colors.green,
            );
            }
            else{
              showToast(
                text: state.changeFavoriteModel.message!,
                color: Colors.red,
              );
            }
          }
      },
      builder: (BuildContext context,state) {
        var cubit=HomeCubit().get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: ConditionalBuilder(
            condition: cubit.homeModel !=null,
            builder: (BuildContext context)=>GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.36,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemBuilder: (BuildContext context, int index)=> BuildItemGridView(model: cubit.homeModel!.data!.products![index]),
              itemCount: cubit.homeModel!.data!.products!.length,
            ),
            fallback: (BuildContext context)=>const Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }

}
