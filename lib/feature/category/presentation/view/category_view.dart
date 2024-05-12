import 'package:e_commerce/feature/category/presentation/view/widget/category_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: const Text('Categories',
        style: TextStyle(
          fontSize: 25,
          color: Colors.white
        ),
        ),
      ),
      body: const CategoryViewBody(),
    );
  }
}
