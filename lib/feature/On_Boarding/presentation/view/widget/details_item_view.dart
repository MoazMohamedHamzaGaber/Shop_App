import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/shared_preference.dart';
import 'package:e_commerce/feature/On_Boarding/data/model/on_boarding_model.dart';
import 'package:e_commerce/feature/On_Boarding/presentation/manage/cubit/on_boarding_cubit.dart';
import 'package:e_commerce/feature/login/presentation/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../manage/cubit/on_boarding_states.dart';

class DetailsItemView extends StatelessWidget {
  DetailsItemView(
      {Key? key, required this.model, required this.boardController})
      : super(key: key);

  final OnBoardingModel model;
  var boardController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnBoardingCubit, OnBoardingStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        var cubit = OnBoardingCubit().get(context);
        return Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(40), topEnd: Radius.circular(40)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/S.png'),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      model.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        model.body,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SmoothPageIndicator(
                      controller: boardController,
                      count: OnBoardingModel.onBoardingModel.length,
                      effect: const ExpandingDotsEffect(
                        spacing: 5,
                        dotWidth: 20,
                        dotHeight: 6,
                        dotColor: Color.fromRGBO(217, 217, 217, 1),
                        activeDotColor: Colors.black,
                        expansionFactor: 2,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: FloatingActionButton(
                        onPressed: () {
                          if (cubit.isLast) {
                            SharedPreference.saveData(
                              key: 'onBoarding',
                              value: true,
                            ).then((value) {
                              if(value) {
                                navigateAndFinish(context, const LoginView());
                              }
                            });
                          }
                          boardController.nextPage(
                            duration: const Duration(
                              milliseconds: 750,
                            ),
                            curve: Curves.fastLinearToSlowEaseIn,
                          );
                        },
                        backgroundColor: Colors.black,
                        child: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
