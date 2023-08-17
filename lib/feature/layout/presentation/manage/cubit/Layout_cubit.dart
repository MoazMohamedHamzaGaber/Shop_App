import 'package:e_commerce/feature/setting/presentation/view/setting_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Home/presentation/view/home_view.dart';
import '../../../../category/presentation/view/category_view.dart';
import '../../../../favorite/presentation/view/favorite_view.dart';
import 'Layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates>
{
  LayoutCubit():super (LayoutInitialStates());
  LayoutCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;

  void changeCurrentIndex(index)
  {
    currentIndex=index;
    emit(LayoutChangeCurrentIndexStates());
  }

  List<Widget>screens=[
    const HomeView(),
    const CategoryView(),
    const FavoriteView(),
    const SettingView(),
  ];
}