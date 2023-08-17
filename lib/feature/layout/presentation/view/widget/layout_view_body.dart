import 'package:e_commerce/feature/layout/presentation/manage/cubit/Layout_cubit.dart';
import 'package:e_commerce/feature/layout/presentation/manage/cubit/Layout_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bottom_nav_bar.dart';

class LayoutViewBody extends StatelessWidget {
  const LayoutViewBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=LayoutCubit().get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
