import 'package:e_commerce/feature/On_Boarding/data/model/on_boarding_model.dart';
import 'package:e_commerce/feature/On_Boarding/presentation/manage/cubit/on_boarding_cubit.dart';
import 'package:e_commerce/feature/On_Boarding/presentation/manage/cubit/on_boarding_states.dart';
import 'package:e_commerce/feature/On_Boarding/presentation/view/widget/page_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingViewBody extends StatelessWidget {
   OnBoardingViewBody({Key? key}) : super(key: key);


  var boardController=PageController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnBoardingCubit,OnBoardingStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit = OnBoardingCubit().get(context);
        return Scaffold(
          body: PageView.builder(
            controller: boardController,
            physics: const BouncingScrollPhysics(),
            onPageChanged: (index){
              if (index == OnBoardingModel.onBoardingModel.length - 1) {
                cubit.isLast = true;
              } else {
                cubit.isLast = false;
              }
            },
            itemBuilder: (context,index)=>PageViewItem(model: OnBoardingModel.onBoardingModel[index],boardController: boardController,),
            itemCount: OnBoardingModel.onBoardingModel.length,
          ),
        );
      },
    );
  }
}
