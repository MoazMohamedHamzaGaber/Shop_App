import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_cubit.dart';
import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_states.dart';
import 'package:e_commerce/feature/favorite/presentation/view/widget/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoriteCubit, FavoriteStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          var cubit = FavoriteCubit().get(context);
          // if(cubit.favoriteModel!.data!.data!.isEmpty)
          //   {
          //     return Padding(
          //       padding: const EdgeInsets.all(12.0),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: const [
          //           Card(
          //               clipBehavior: Clip.antiAliasWithSaveLayer,
          //               child: Image(
          //                   image: NetworkImage(
          //                       'https://cdn-icons-png.flaticon.com/512/1024/1024824.png'))),
          //           SizedBox(
          //             height: 10,
          //           ),
          //           Text(
          //             'Your Favorite Is Empty',
          //             style: TextStyle(
          //               fontSize: 20,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.white,
          //             ),
          //           ),
          //           SizedBox(
          //             height: 10,
          //           ),
          //           Text(
          //             'Sorry, the keyword you entered cannot be found,  please check again or search with another keyword.',
          //             style: TextStyle(
          //               fontSize: 16,
          //               //fontWeight: FontWeight.bold,
          //               color: Colors.grey,
          //             ),
          //           ),
          //         ],
          //       ),
          //     );
          //   }
          return ConditionalBuilder(
            condition: cubit.favoriteModel !=null,
            builder: (context) => ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  ListViewItem(model: cubit.favoriteModel!.data!.data![index]),
              itemCount: cubit.favoriteModel!.data!.data!.length,
            ),
            fallback: (context) =>
            const Center(child: CircularProgressIndicator()),
          );
        }
        );
  }
}
