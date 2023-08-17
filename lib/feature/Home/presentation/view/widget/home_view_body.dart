import 'package:flutter/material.dart';
import 'grid_view.dart';
import 'text_and_text_field_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child:  Column(
          children:  [
            TextAndTextFieldSection(),
             GridViewScreen(),
          ],
        ),
      ),
    );
  }
}
