import 'package:e_commerce/feature/setting/data/model/contact_model.dart';
import 'package:e_commerce/feature/setting/presentation/manage/cubit/setting_cubit.dart';
import 'package:e_commerce/feature/setting/presentation/manage/cubit/setting_states.dart';
import 'package:e_commerce/feature/setting/presentation/view/web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';

class AboutUsViewBody extends StatelessWidget {
  const AboutUsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingCubit, SettingStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        var cubit = SettingCubit().get(context);
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/Group 6.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  cubit.aboutUsModel!.data!.about!,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
               const SizedBox(
                 height: 15,
               ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Contact Us',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => buildContact(
                              cubit.contactUsModel!.data!.data![index], context),
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                          itemCount: cubit.contactUsModel!.data!.data!.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildContact(Data model, context) => InkWell(
        onTap: () {
          print(model.value);
          navigateTo(context, WebViewPage(url: model.value!));
        },
        child: Image(
          height: 50,
          width: 50,
          image: NetworkImage(model.image!),
        ),
      );
}
