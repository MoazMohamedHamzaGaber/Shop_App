import 'package:e_commerce/feature/setting/presentation/view/change_password_view.dart';
import 'package:e_commerce/feature/setting/presentation/view/widget/account.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constant.dart';
import '../about_us_view.dart';
import 'setting_item.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
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
              function: (){
                navigateTo(context, const ChangePasswordView());
              },
              text: 'Change Password',
              icon: Icons.password,
            ),
            SettingItem(
              function: (){
                navigateTo(context, const AboutUsView());
              },
               text: 'About Us',
               icon: Icons.roundabout_left,
            ),
          ],
        ),
      ),
    );
  }
}
