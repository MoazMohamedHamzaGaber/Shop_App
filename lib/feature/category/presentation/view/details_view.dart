import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../data/model/details_category_model.dart';
import 'widget/details.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key, required this.text, required this.model});
  final String text;
  final List<DetailsCategoryModel>model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appBar(text: text, context: context),
      body: CategoryDetailsViewBody(
        model: model,
      ),
    );
  }
}
