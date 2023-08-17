import 'package:e_commerce/core/utils/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import '../../../data/model/cart_model.dart';
import 'cart_states.dart';

class CartCubit extends Cubit<CartStates>
{
  CartCubit():super (CartInitialStates());
  static CartCubit get(context)=>BlocProvider.of(context);


  CartModel? cartModel;
  void getCart()
  {
    emit(CartLoadingStates());
    ApiService.getData(
        url: 'carts',
      token: token
    ).then((value)
    {
      cartModel=CartModel.fromJson(value.data);
      emit(CartSuccessStates());
    }
    ).catchError((error)
    {
      print(error.toString());
      emit(CartErrorStates(error.toString()));
    }
    );
  }

}