import 'package:e_commerce/core/utils/api_service.dart';
import 'package:e_commerce/feature/Home/data/model/home_model.dart';
import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import '../../../data/model/change_favorite_model.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates>
{
  HomeCubit():super (HomeInitialStates());
  HomeCubit get(context)=>BlocProvider.of(context);

  HomeModel? homeModel;

  Map<int,bool>favorites={};
  void getDataHome()
  {
    emit(HomeLoadingStates());
    ApiService.getData(
        url: 'home',
      token: token
    ).then((value)
    {
      homeModel=HomeModel.fromJson(value.data);

      homeModel!.data!.products!.forEach((element) {
        favorites.addAll({
          element.id:element.inFavorites,
        });
      });
      emit(HomeSuccessStates());
    }
    ).catchError((error)
    {
      print(error.toString());
      emit(HomeErrorStates(error.toString()));
    }
    );
  }

  ////////////////////////

  ChangeFavoriteModel? changeFavoriteModel;
  void changeFavorites({
    context,
   required int productId,
})
  {
    favorites[productId]= !favorites[productId]!;
    emit(ChangeFavoriteLoadingStates());
    ApiService.postData(
        url: 'favorites',
        token: token,
      data: {
          'product_id':productId,
      },
    ).then((value)
    {
      changeFavoriteModel=ChangeFavoriteModel.fromJson(value.data);
      print(value.data);
      if(!changeFavoriteModel!.status!)
        {
          favorites[productId]= !favorites[productId]!;
        }
      else{
        FavoriteCubit().get(context).getFavorite();
      }
      emit(ChangeFavoriteSuccessStates(changeFavoriteModel!));
    }
    ).catchError((error)
    {
      favorites[productId]= !favorites[productId]!;
      print(error.toString());
      emit(ChangeFavoriteErrorStates(error.toString()));
    }
    );
  }


}