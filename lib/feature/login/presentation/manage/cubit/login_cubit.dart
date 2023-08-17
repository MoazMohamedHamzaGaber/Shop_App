import 'package:e_commerce/core/utils/api_service.dart';
import 'package:e_commerce/feature/login/data/model/login_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit():super (LoginInitialStates());
  LoginCubit get(context)=>BlocProvider.of(context);

  LoginModel? loginModel;
  void userLogin({
  required String email,
    required String password,
})
  {
    emit(LoginLoadingStates());
    ApiService.postData(
        url: 'login',
      data: {
        'email': email,
        'password': password
      },
    ).then((value)
    {
      loginModel=LoginModel.fromJson(value.data);
      emit(LoginSuccessStates(loginModel!));
    }
    ).catchError((error)
    {
      print(error.toString());
      emit(LoginErrorStates(error.toString()));
    }
    );
  }
}