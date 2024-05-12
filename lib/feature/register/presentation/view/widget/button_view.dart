import 'package:e_commerce/feature/register/presentation/manage/cubit/register_cubit.dart';
import 'package:e_commerce/feature/register/presentation/manage/cubit/register_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/components.dart';
import '../../../../../core/utils/constant.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit,RegisterStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        var cubit = RegisterCubit().get(context);
        return Card(
          elevation: 15,
          shadowColor: Colors.blue.shade50,
          color: Colors.blue,
          shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          child: buildMaterialButton(
            function: () {
              if(registerPasswordController.text == registerConfirmPasswordController.text)
              {
                cubit.userRegister(
                  email: registerEmailController.text,
                  password: registerPasswordController.text,
                  name: registerNameController.text,
                  phone: registerPhoneController.text, context: context,
                );
              }
              else
              {
                buildShowDialog(
                  context: context,
                  image: 'assets/images/warning.png',
                  name: 'Password Mismatch',
                  function: (){
                    Navigator.pop(context);
                  },
                );
              }

            },
            text: 'Create',
            borderRadius: BorderRadius.circular(30),
            color: Colors.blue.shade900,
            width: 220,
            height: 60,
          ),
        );
      },
    );
  }
}
