import 'package:e_commerce/feature/category/data/model/category_model.dart';
import 'package:e_commerce/feature/category/data/model/details_category_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constant.dart';
import '../details_view.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({Key? key, required this.model}) : super(key: key);

  final Data model;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(model.name =='electrionic devices') {
          navigateTo(context,   CategoryDetailsView(
              model: DetailsCategoryModel.electronicModel,
            text: 'electrionic devices',
          ),
        );
        }
        if(model.name =='Clothes') {
          navigateTo(context,
            CategoryDetailsView(
                model: DetailsCategoryModel.clothesModel,
              text: 'Clothes',
            ),
          );
        }
        if(model.name =='sports') {
          navigateTo(context,
            CategoryDetailsView(
              model: DetailsCategoryModel.sportsModel,
              text: 'Sports',
            ),
          );
        }
        if(model.name =='Lighting') {
          navigateTo(context,
            CategoryDetailsView(
              model: DetailsCategoryModel.lightingModel,
              text: 'Lighting',
            ),
          );
        }
        if(model.name =='Prevent Corona') {
          navigateTo(context,
            CategoryDetailsView(
              model: DetailsCategoryModel.coronaModel,
              text: 'Prevent Corona',
            ),
          );
        }
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
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
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
