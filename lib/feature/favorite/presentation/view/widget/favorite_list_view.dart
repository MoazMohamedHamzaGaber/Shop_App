import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_cubit.dart';
import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_view_item.dart';

class FavoriteListView extends StatelessWidget {
  const FavoriteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoriteCubit, FavoriteStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        if (FavoriteCubit()
            .get(context)
            .favoriteModel!
            .data!
            .data!
            .isNotEmpty) {
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            clipBehavior: Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.36,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemBuilder: (BuildContext context, int index)=> ListViewItem(model: FavoriteCubit().get(context).favoriteModel!.data!.data![index]),
            itemCount: FavoriteCubit().get(context).favoriteModel!.data!.data!.length,
          );
        }
        return const Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image(
                      image: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/1024/1024824.png'))),
              SizedBox(
                height: 10,
              ),
              Text(
                'Your Favorite Is Empty',
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
        );
      },
    );

  }
}
