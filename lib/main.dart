import 'package:e_commerce/core/utils/api_service.dart';
import 'package:e_commerce/core/utils/shared_preference.dart';
import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_cubit.dart';
import 'package:e_commerce/feature/On_Boarding/presentation/manage/cubit/on_boarding_cubit.dart';
import 'package:e_commerce/feature/cart/presentation/manage/cubit/cart_cubit.dart';
import 'package:e_commerce/feature/category/presentation/manage/cubit/home_cubit.dart';
import 'package:e_commerce/feature/favorite/presentation/manage/cubit/favorite_cubit.dart';
import 'package:e_commerce/feature/layout/presentation/manage/cubit/Layout_cubit.dart';
import 'package:e_commerce/feature/layout/presentation/view/layout_view.dart';
import 'package:e_commerce/feature/login/presentation/manage/cubit/login_cubit.dart';
import 'package:e_commerce/feature/register/presentation/manage/cubit/register_cubit.dart';
import 'package:e_commerce/feature/search/presentation/manage/cubit/search_cubit.dart';
import 'package:e_commerce/feature/setting/presentation/manage/cubit/setting_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/constant.dart';
import 'feature/On_Boarding/presentation/view/on_boarding_view.dart';
import 'feature/login/presentation/view/login_view.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  ApiService.init();
  await SharedPreference.init();

  Widget? widget;
  bool? onBoarding=SharedPreference.getData(key: 'onBoarding');
   token=SharedPreference.getData(key: 'token');
  print(token);

  if(onBoarding != null)
    {
      if(token != null) {
        widget=  LayoutView();
      } else {
        widget=const LoginView();
      }
    }
  else
    {
      widget=const OnBoardingView();
    }

  runApp( MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
   MyApp({super.key,required this.startWidget});

   Widget? startWidget;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context)=>OnBoardingCubit(),
        ),
        BlocProvider(
          create: (context)=>LoginCubit(),
        ),
        BlocProvider(
          create: (context)=>RegisterCubit(),
        ),
        BlocProvider(
          create: (context)=>LayoutCubit(),
        ),
        BlocProvider(
          create: (context)=>HomeCubit()..getDataHome(),
        ),
        BlocProvider(
          create: (context)=>CategoryCubit()..getCategory(),
        ),
        BlocProvider(
          create: (context)=>SettingCubit()..getNotification()..getProfile()..getAboutUs()..getContactUs(),
        ),
        BlocProvider(
          create: (context)=>SearchCubit(),
        ),
        BlocProvider(
          create: (context)=>FavoriteCubit()..getFavorite(),
        ),
        BlocProvider(
          create: (context)=>CartCubit()..getCart(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: startWidget,
      ),
    );
  }
}
