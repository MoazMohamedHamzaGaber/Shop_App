import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import '../../manage/cubit/search_cubit.dart';
import '../../manage/cubit/search_states.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit,SearchStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=SearchCubit().get(context);
        return Card(
          color: Colors.white,
          elevation: 10,
          shadowColor: Colors.grey.shade50,
          shape: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextFormField(
              onChanged: (text){
                cubit.getSearch(text: text);
              },
              style: const TextStyle(
                color: Colors.blue,
              ),
              controller: searchController,
              keyboardType: TextInputType.text,
              decoration:InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Find your product',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                iconColor: Colors.red,
                prefixIcon: const Icon(Icons.search,color: Colors.grey,),
              ),
            ),
          ),
        );
      },
    );
  }
}
