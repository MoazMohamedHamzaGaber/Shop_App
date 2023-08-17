import 'package:e_commerce/core/utils/constant.dart';
import 'package:flutter/material.dart';

import 'widget/search_view_body.dart';

class SearchView extends StatelessWidget {
   const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appBar(
        context: context,
          text: 'Search',
      ),
      body:  const SearchViewBody(),
    );
  }
}
