import 'package:e_commerce/core/utils/components.dart';
import 'package:e_commerce/feature/setting/presentation/manage/cubit/setting_cubit.dart';
import 'package:e_commerce/feature/setting/presentation/manage/cubit/setting_states.dart';
import 'package:e_commerce/feature/setting/presentation/view/change_password_view.dart';
import 'package:e_commerce/feature/setting/presentation/view/complaints_view.dart';
import 'package:e_commerce/feature/setting/presentation/view/widget/account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/shared_preference.dart';
import '../../../../login/presentation/view/login_view.dart';
import '../about_us_view.dart';
import 'setting_item.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingCubit,SettingStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                const Account(),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 40,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.white12,
                  ),
                ),
                const Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SettingItem(
                  function: () {
                    navigateTo(context, const ChangePasswordView());
                  },
                  text: 'Change Password',
                  icon: Icons.password,
                ),
                SettingItem(
                  function: () {
                    navigateTo(context, const ComplaintsView());
                  },
                  text: 'Add Complaints',
                  icon: Icons.message,
                ),
                SettingItem(
                  function: () {
                    navigateTo(context, const AboutUsView());
                  },
                  text: 'About Us',
                  icon: Icons.roundabout_left,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.white12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: InkWell(
                    onTap: () {
                      buildShowDialog(
                        cancel: true,
                        context: context,
                        image: 'assets/images/warning.png',
                        name: 'Are you sure?',
                        function: () {
                          SharedPreference.removeData(key: 'token').then((value) => {
                            if (value)
                              navigateAndFinish(context, const LoginView()),
                          });
                        },
                      );
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.red,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white70,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
