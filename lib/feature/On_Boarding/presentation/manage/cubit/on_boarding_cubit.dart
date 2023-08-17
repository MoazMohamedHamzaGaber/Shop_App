import 'package:bloc/bloc.dart';
import 'package:e_commerce/feature/On_Boarding/presentation/manage/cubit/on_boarding_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates>
{
  OnBoardingCubit():super (OnBoardingInitialStates());
  OnBoardingCubit get(context)=>BlocProvider.of(context);

  bool isLast=false;

}