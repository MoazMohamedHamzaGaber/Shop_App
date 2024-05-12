import 'package:flutter/material.dart';

import '../../../../../core/utils/animated.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../Home/presentation/view/details_view.dart';
import '../../../data/model/details_category_model.dart';

class DetailsGridViewItem extends StatelessWidget {
  const DetailsGridViewItem({super.key, required this.model});

  final DetailsCategoryModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(AnimationsRoute(page: DetailsView(
          name: model.name,
          price: model.price,
          oldPrice: model.oldPrice,
          description: model.desc,
          discount: model.discount,
          id: 53,
          image: model.image,
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
                          image: NetworkImage(model.image),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 180,
                        child: Text(
                          model.name,
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
                      Text(
                        '${model.price.round()}',
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
