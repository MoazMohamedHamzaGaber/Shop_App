import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_cubit.dart';
import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_states.dart';
import 'package:e_commerce/feature/favorite/presentation/view/widget/favorite_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoriteCubit, FavoriteStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
            return ConditionalBuilder(
            condition: state is! FavoriteLoadingStates,
            builder: (context) => const FavoriteListView(),
            fallback: (context) =>
            const Center(child: CircularProgressIndicator()),
          );
        }
        );
  }
}
