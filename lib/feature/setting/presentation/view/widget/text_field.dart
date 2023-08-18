import 'package:e_commerce/feature/setting/presentation/manage/cubit/setting_cubit.dart';
import 'package:e_commerce/feature/setting/presentation/manage/cubit/setting_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/components.dart';
import '../../../../../core/utils/constant.dart';

class TextFieldView extends StatelessWidget {
    const TextFieldView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<SettingCubit,SettingStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              textFormField(
                text: 'name',
                type: TextInputType.name,
                controller: profileNameController,
              ),
              const SizedBox(
                height: 20,
              ),
              textFormField(
                text: 'email',
                type: TextInputType.emailAddress,
                controller: profileEmailController,
              ),
              const SizedBox(
                height: 20,
              ),
              textFormField(
                text: 'Phone',
                type: TextInputType.phone,
                controller: profilePhoneController,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
    );
  }
}
