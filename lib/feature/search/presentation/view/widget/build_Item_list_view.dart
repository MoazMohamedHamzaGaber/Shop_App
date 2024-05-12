import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_states.dart';
import 'package:e_commerce/feature/search/data/model/search_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/animated.dart';
import '../../../../Home/presentation/manage/cubit/home_cubit.dart';
import '../../../../Home/presentation/view/details_view.dart';


class BuildItemListView extends StatelessWidget {
    const BuildItemListView({Key? key, required this.model}) : super(key: key);

 final Data model;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        return InkWell(
          onTap: (){
            Navigator.of(context).push(AnimationsRoute(page: DetailsView(name: model.name!,
              price: model.price,
              oldPrice: model.oldPrice,
              description: model.description!,
              discount: model.discount,
              images: model.images,
              id: model.id!,
            )));
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              right: 20,
              left: 20,
            ),
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        //color: Color.fromARGB(255, 228, 228, 228),
                        color: Colors.transparent,
                        offset: Offset(2, 3),
                        blurRadius: 5,
                        spreadRadius: 0.1,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              '${model.image}',
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          SizedBox(
                            width: 160,
                            child: Text(
                              '${model.name}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            '${model.price.round()}',
                            style: const TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    HomeCubit().get(context).changeFavorites(
                        context: context, productId: model.id!);
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
            ),
          ),
        );
      },
    );
  }
}
