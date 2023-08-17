import 'package:e_commerce/feature/category/presentation/manage/cubit/home_cubit.dart';
import 'package:e_commerce/feature/category/presentation/manage/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'grid_view_item.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryCubit, CategoryStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        var cubit = CategoryCubit().get(context);
        if (state is CategorySuccessStates) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemBuilder: (context, index) =>
                  GridViewItem(model: cubit.categoryModel!.data!.data![index]),
              itemCount: cubit.categoryModel!.data!.data!.length,
            ),
          );
        }
        else if (state is CategoryErrorStates) {
          return Text(state.error);
        }
        else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
