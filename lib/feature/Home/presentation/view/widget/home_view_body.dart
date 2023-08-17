import 'package:flutter/material.dart';
import 'grid_view.dart';
import 'text_and_text_field_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child:  Column(
          children:  const [
            TextAndTextFieldSection(),
             GridViewScreen(),
          ],
        ),
      ),
    );
  }
}
