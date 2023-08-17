import 'package:flutter/material.dart';

import '../../manage/cubit/setting_cubit.dart';

class AccountImageAndTextSection extends StatelessWidget {
  const AccountImageAndTextSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        bottom: 30,
      ),
      child: Center(
        child: Column(
          children:  [
            const CircleAvatar(
              radius: 52,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                     'https://scontent.fcai19-3.fna.fbcdn.net/v/t39.30808-6/273025292_1139535833249199_6564232445671122117_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=e3f864&_nc_ohc=qrWzG-2JtMUAX_5JD5c&_nc_ht=scontent.fcai19-3.fna&oh=00_AfCwiZ8UL_uxYi2ZwBkBHTntBrYlpWDrj62rNU0NIx9Z_w&oe=64D6FDBE',),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              SettingCubit().get(context).profileModel!.data!.name!,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Mobile Developer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
