import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_states.dart';
import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_cubit.dart';
import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_states.dart';
import 'package:e_commerce/feature/favorite/presentation/view/widget/favorite_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/errors/custom_error.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>FavoriteCubit()..getFavorite(),
      child: BlocConsumer<FavoriteCubit, FavoriteStates>(
          listener: (BuildContext context, state) {},
          builder: (BuildContext context, Object? state) {
            var cubit=FavoriteCubit().get(context);
            if(state is FavoriteSuccessStates){
              if (cubit.favoriteModel!.data!.data!.isNotEmpty) {
                return Padding(
                padding: const EdgeInsets.all(20),
                child: FavoriteListView(cubit: cubit,),
              );
              }else{
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
              }
            }
            else if (state is FavoriteErrorStates) {
              return CustomError(text: state.error);
            }
            else{
              return const Center(child: CircularProgressIndicator());
            }

          }
          ),
    );
  }
}
