import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_states.dart';
import 'package:e_commerce/feature/Home/presentation/view/details_view.dart';
import 'package:e_commerce/feature/favorite/data/model/favorite_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/animated.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../Home/presentation/manage/cubit/home_cubit.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({Key? key, required this.model}) : super(key: key);

  final Data model;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeStates>(
      listener: (BuildContext context, state) {
        if(state is ChangeFavoriteSuccessStates){
          if(state.changeFavoriteModel.status!) {
           return showToast(text: state.changeFavoriteModel.message!, color: Colors.green);
          }else{
            showToast(text: state.changeFavoriteModel.message!, color: Colors.red);
          }
        }
      },
      builder: (BuildContext context, Object? state) {
        return InkWell(
          onTap: (){
            Navigator.of(context).push(AnimationsRoute(page: DetailsView(name: model.product!.name!,
              price: model.product!.price!,
              oldPrice: model.product!.oldPrice!,
              description: model.product!.description!,
              discount: model.product!.discount!,
              image: model.product!.image,
              id: model.product!.id!,
            )));
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
                              maxLines: 1,
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
        );
      },
    );
  }
}
