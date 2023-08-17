import 'package:e_commerce/core/utils/api_service.dart';
import 'package:e_commerce/feature/favorite/data/model/favorite_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import 'favorite_states.dart';

class FavoriteCubit extends Cubit<FavoriteStates>
{
  FavoriteCubit():super (FavoriteInitialStates());
  FavoriteCubit get(context)=>BlocProvider.of(context);


  FavoriteModel? favoriteModel;
  void getFavorite()
  {
    emit(FavoriteLoadingStates());
    ApiService.getData(
        url: 'favorites',
      token: token
    ).then((value)
    {
      favoriteModel=FavoriteModel.fromJson(value.data);
      emit(FavoriteSuccessStates());
    }
    ).catchError((error)
    {
      print(error.toString());
      emit(FavoriteErrorStates(error.toString()));
    }
    );
  }

}