import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/feature/search/presentation/manage/cubit/search_cubit.dart';
import 'package:e_commerce/feature/search/presentation/manage/cubit/search_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'build_Item_list_view.dart';

class ListViewSection extends StatelessWidget {
  const ListViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        var cubit = SearchCubit().get(context);
        if (state is SearchLoadingStates) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: LinearProgressIndicator(),
          );
        }
        if(searchController.text =='')
        {
          return   const Text('');
        }
        if (state is SearchSuccessStates) {
          return Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => BuildItemListView(
                model: cubit.searchModel!.data!.data![index],
              ),
              itemCount: cubit.searchModel!.data!.data!.length,
            ),
          );
        }
        else {
          return const Center(
            child: Image(
                image: AssetImage('assets/images/954591.png'),
            ),
          );
        }
      },
    );
  }
}
