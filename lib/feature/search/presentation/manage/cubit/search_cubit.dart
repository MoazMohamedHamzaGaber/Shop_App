import 'package:e_commerce/core/utils/api_service.dart';
import 'package:e_commerce/feature/search/data/model/search_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import 'search_states.dart';

class SearchCubit extends Cubit<SearchStates>
{
  SearchCubit():super (SearchInitialStates());
  SearchCubit get(context)=>BlocProvider.of(context);

  SearchModel? searchModel;
  void getSearch({
  required String text,
})
  {
    emit(SearchLoadingStates());
    ApiService.postData(
        url: 'products/search',
      token: token,
        data: {
          'text':text,
        },
    ).then((value)
    {
      searchModel=SearchModel.fromJson(value.data);
      emit(SearchSuccessStates());
    }
    ).catchError((error)
    {
      print(error.toString());
      emit(SearchErrorStates(error.toString()));
    }
    );
  }
}