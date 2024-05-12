import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_cubit.dart';
import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_view_item.dart';

class FavoriteListView extends StatelessWidget {
  const FavoriteListView({super.key, this.cubit});

  final cubit;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      clipBehavior: Clip.none,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.26,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemBuilder: (BuildContext context, int index)=> ListViewItem(model: cubit.favoriteModel!.data!.data![index]),
      itemCount: cubit.favoriteModel!.data!.data!.length,
    );

  }
}
