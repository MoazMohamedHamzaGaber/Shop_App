import 'package:e_commerce/core/utils/shared_preference.dart';
import 'package:e_commerce/feature/login/presentation/view/login_view.dart';
import 'package:e_commerce/feature/setting/presentation/manage/cubit/setting_cubit.dart';
import 'package:e_commerce/feature/setting/presentation/manage/cubit/setting_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';

class AccountButtonView extends StatelessWidget {
  const AccountButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingCubit, SettingStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                //horizontal: 20,
                vertical: 10,
              ),
              child: buildMaterialButton(
                function: () {
                  SettingCubit().get(context).updateProfile(
                        name: profileNameController.text,
                        email: profileEmailController.text,
                        phone: profilePhoneController.text,
                        image: 'https://scontent.fcai19-3.fna.fbcdn.net/v/t39.30808-6/273025292_1139535833249199_6564232445671122117_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=e3f864&_nc_ohc=qrWzG-2JtMUAX_5JD5c&_nc_ht=scontent.fcai19-3.fna&oh=00_AfCwiZ8UL_uxYi2ZwBkBHTntBrYlpWDrj62rNU0NIx9Z_w&oe=64D6FDBE',
                      );
                },
                width: 300,
                text: 'Update Profile',
                borderRadius: BorderRadius.circular(8),
                color: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                //horizontal: 20,
                vertical: 10,
              ),
              child: buildMaterialButton(
                function: () {
                  SharedPreference.removeData(key: 'token').then((value) => {
                        if (value)
                          navigateAndFinish(context, const LoginView()),
                      });
                },
                width: 300,
                text: 'Logout',
                borderRadius: BorderRadius.circular(8),
                color: Colors.blueGrey,
              ),
            ),
          ],
        );
      },
    );
  }
}
