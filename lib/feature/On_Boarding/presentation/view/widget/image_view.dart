import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/feature/On_Boarding/data/model/on_boarding_model.dart';
import 'package:e_commerce/feature/login/presentation/view/login_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/shared_preference.dart';

class ImageView extends StatelessWidget {
   ImageView({Key? key, required this.model}) : super(key: key);

  final OnBoardingModel model;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Container(
            height: 500,
            decoration:  BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
                image: AssetImage(
                  model.image,
                ),
              ),
            ),
          ),
          Container(
            height: 30,
            margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(0, 0, 0, 0.24),
            ),
            child: MaterialButton(
              onPressed: () {
                SharedPreference.saveData(
                  key: 'onBoarding',
                  value: true,
                ).then((value) {
                  if(value) {
                    navigateAndFinish(context, const LoginView());
                  }
                });
              },
              child: const Text(
                'Skip',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
