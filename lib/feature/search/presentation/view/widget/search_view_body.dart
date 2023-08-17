import 'package:e_commerce/feature/search/presentation/view/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children:  [
          SearchTextField(),
            const ListViewSection(),
        ],
      ),
    );
  }
}
