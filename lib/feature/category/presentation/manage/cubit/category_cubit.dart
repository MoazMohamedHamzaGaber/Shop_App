import 'package:e_commerce/core/utils/api_service.dart';
import 'package:e_commerce/feature/category/data/model/category_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import 'category_states.dart';

class CategoryCubit extends Cubit<CategoryStates>
{
  CategoryCubit():super (CategoryInitialStates());
  CategoryCubit get(context)=>BlocProvider.of(context);

  CategoryModel? categoryModel;
  void getCategory()
  {
    emit(CategoryLoadingStates());
    ApiService.getData(
        url: 'categories',
      token: token
    ).then((value)
    {
      categoryModel=CategoryModel.fromJson(value.data);
      emit(CategorySuccessStates());
    }
    ).catchError((error)
    {
      print(error.toString());
      emit(CategoryErrorStates(error.toString()));
    }
    );
  }
}