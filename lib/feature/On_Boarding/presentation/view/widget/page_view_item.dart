import 'package:e_commerce/feature/On_Boarding/data/model/on_boarding_model.dart';
import 'package:flutter/material.dart';

import 'details_item_view.dart';
import 'image_view.dart';

class PageViewItem extends StatelessWidget {
  PageViewItem({Key? key, required this.model,required this.boardController}) : super(key: key);

  final OnBoardingModel model;
  var boardController=PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *1,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          ImageView(model: model),
          DetailsItemView(model: model,boardController: boardController),
        ],
      ),
    );
  }
}
