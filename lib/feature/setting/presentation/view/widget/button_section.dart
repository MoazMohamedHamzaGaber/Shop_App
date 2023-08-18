import 'package:e_commerce/feature/setting/presentation/manage/cubit/setting_cubit.dart';
import 'package:e_commerce/feature/setting/presentation/manage/cubit/setting_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/constant.dart';

class AccountButtonViewSection extends StatelessWidget {
  const AccountButtonViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingCubit,SettingStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit = SettingCubit().get(context).profileModel;
        if(cubit !=null)
        {
          profileNameController.text = cubit.data!.name!;
          profileEmailController.text = cubit.data!.email!;
          profilePhoneController.text = cubit.data!.phone!;
        }
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: buildMaterialButton(
            function: () {
              SettingCubit().get(context).updateProfile(
                name: profileNameController.text,
                email: profileEmailController.text,
                phone: profilePhoneController.text,
              );
            },
            width: 300,
            text: 'Update Profile',
            borderRadius: BorderRadius.circular(8),
            color: Colors.blueGrey,
          ),
        );
      },
    );
  }
}
