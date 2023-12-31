import 'package:e_commerce/feature/Home/presentation/view/details_view.dart';
import 'package:e_commerce/feature/favorite/data/model/favorite_model.dart';
import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../Home/presentation/manage/cubit/home_cubit.dart';
import '../../manage/cubit/favorite_states.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({Key? key, required this.model}) : super(key: key);

  final Data model;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoriteCubit,FavoriteStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        return InkWell(
          onTap: (){
            navigateTo(context, DetailsView(name: model.product!.name!,
              price: model.product!.price!,
              oldPrice: model.product!.oldPrice!,
              description: model.product!.description!,
              discount: model.product!.discount!,
              image: model.product!.image,
              id: model.product!.id!,
            ),);
          },
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: AlignmentDirectional.topCenter,
                            child: Image(
                              height: 100,
                              width: 100,
                              image: NetworkImage('${model.product!.image}'),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 180,
                            child: Text(
                              '${model.product!.name}',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '${model.product!.price.round()}',
                                style: const TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              if(model.product!.discount != 0)
                                Text(
                                  '${model.product!.oldPrice.round()}',
                                  style: const TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 17,
                                    color: Colors.grey,
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      HomeCubit().get(context).changeFavorites(
                          context: context, productId: model.product!.id!);
                      print(model.product!.id);
                    },
                    icon: Icon(
                      HomeCubit()
                          .get(context)
                          .favorites[model.product!.id]! ? Icons.favorite : Icons
                          .favorite_border,
                      color: HomeCubit()
                          .get(context)
                          .favorites[model.product!.id]! ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
          // child: Stack(
          //   alignment: AlignmentDirectional.topEnd,
          //   children: [
          //     Container(
          //       width: double.infinity,
          //       height: 120,
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.circular(20),
          //         boxShadow: const [
          //           BoxShadow(
          //             //color: Color.fromARGB(255, 228, 228, 228),
          //             color: Colors.transparent,
          //             offset: Offset(2, 3),
          //             blurRadius: 5,
          //             spreadRadius: 0.1,
          //           ),
          //         ],
          //       ),
          //       child: Row(
          //         children: [
          //           Container(
          //             margin: const EdgeInsets.all(8),
          //             width: 100,
          //             height: 100,
          //             decoration: BoxDecoration(
          //               image:  DecorationImage(
          //                 fit: BoxFit.cover,
          //                 image: NetworkImage(
          //                   '${model.product!.image}',
          //                 ),
          //               ),
          //               borderRadius: BorderRadius.circular(10),
          //             ),
          //           ),
          //           const SizedBox(
          //             width: 5,
          //           ),
          //           Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children:   [
          //               SizedBox(
          //                 width: 160,
          //                 child: Text(
          //                   '${model.product!.name}',
          //                   overflow: TextOverflow.ellipsis,
          //                   maxLines: 2,
          //                   style: const TextStyle(
          //                     fontWeight: FontWeight.bold,
          //                     fontSize: 16,
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //               ),
          //               const SizedBox(height: 6),
          //               Text(
          //                 '${model.product!.price.round()}',
          //                 style: const TextStyle(color: Colors.grey, fontSize: 18),
          //               ),
          //             ],
          //           ),
          //         ],
          //       ),
          //     ),
          //     IconButton(
          //       onPressed: (){
          //         HomeCubit().get(context).changeFavorites(context: context,productId: model.product!.id!);
          //         //print(model.id);
          //       },
          //       icon:  Icon(
          //         HomeCubit().get(context).favorites[model.product!.id]!?Icons.favorite:Icons.favorite_border,
          //         color:HomeCubit().get(context).favorites[model.product!.id]!? Colors.blue:Colors.grey,
          //       ),
          //     ),
          //   ],
          // ),
        );
      },
    );
  }
}
