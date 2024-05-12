import 'package:e_commerce/core/utils/constant.dart';
import 'package:flutter/material.dart';

import 'widget/search_view_body.dart';

class SearchView extends StatelessWidget {
   const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
            searchController.clear();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
        ),
        title: const Text('Search',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body:  const SearchViewBody(),
    );
  }
}
