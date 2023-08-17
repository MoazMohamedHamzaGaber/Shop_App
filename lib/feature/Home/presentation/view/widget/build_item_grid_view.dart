import 'package:e_commerce/feature/Home/data/model/home_model.dart';
import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_cubit.dart';
import 'package:e_commerce/feature/Home/presentation/view/details_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constant.dart';

class BuildItemGridView extends StatelessWidget {
  const BuildItemGridView({Key? key, required this.model}) : super(key: key);

  final Products model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateTo(context, DetailsView(name: model.name,
            price: model.price,
            oldPrice: model.oldPrice,
            description: model.description,
            discount: model.discount,
            images: model.images!,
          id: model.id!,
        ),
        );
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
                          image: NetworkImage('${model.image}'),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 180,
                        child: Text(
                          '${model.name}',
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
                            '${model.price.round()}',
                            style: const TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          if(model.discount != 0)
                            Text(
                              '${model.oldPrice.round()}',
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
                      context: context, productId: model.id);
                  print(model.id);
                },
                icon: Icon(
                  HomeCubit()
                      .get(context)
                      .favorites[model.id]! ? Icons.favorite : Icons
                      .favorite_border,
                  color: HomeCubit()
                      .get(context)
                      .favorites[model.id]! ? Colors.blue : Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
