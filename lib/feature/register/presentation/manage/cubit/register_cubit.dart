import 'package:e_commerce/core/utils/api_service.dart';
import 'package:e_commerce/feature/register/data/model/register_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/components.dart';
import 'register_states.dart';

class RegisterCubit extends Cubit<RegisterStates>
{
  RegisterCubit():super (RegisterInitialStates());
  RegisterCubit get(context)=>BlocProvider.of(context);

  RegisterModel? registerModel;
  void userRegister({
  required String email,
    required String password,
    required String name,
    required String phone,
    required context,
  })
  {
    emit(RegisterLoadingStates());
    buildShowLoading(context);
    ApiService.postData(
        url: 'register',
      data: {
        'email': email,
        'password': password,
        'phone':phone,
        'name':name,
      },
    ).then((value)
    {
      registerModel=RegisterModel.fromJson(value.data);
      emit(RegisterSuccessStates(registerModel!));
    }
    ).catchError((error)
    {
      print(error.toString());
      emit(RegisterErrorStates(error.toString()));
    }
    );
  }
}