import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_commerce/feature/login/presentation/manage/cubit/login_cubit.dart';
import 'package:e_commerce/feature/login/presentation/manage/cubit/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';

class MaterialButtonSection extends StatelessWidget {
  const MaterialButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        var cubit = LoginCubit().get(context);
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
              cubit.userLogin(
                email: loginEmailController.text,
                password: loginPasswordController.text, context: context,
              );
            },
            text: 'LOG IN',
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
