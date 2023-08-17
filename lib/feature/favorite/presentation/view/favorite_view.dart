import 'package:e_commerce/core/utils/constant.dart';
import 'package:flutter/material.dart';

import 'widget/favorite_view_body.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: const Text('Favorites',
        style: TextStyle(
          fontSize: 25,
        ),
        ),
      ),
      body: const FavoriteViewBody(),
    );
  }
}
