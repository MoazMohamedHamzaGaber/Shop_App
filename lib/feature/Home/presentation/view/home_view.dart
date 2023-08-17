import 'package:e_commerce/core/utils/constant.dart';
import 'package:flutter/material.dart';

import 'widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Image(
            color: Colors.white,
            image: AssetImage('assets/images/Group 6.png'),
          )
      ),
      body: const HomeViewBody()
    );
  }
}
