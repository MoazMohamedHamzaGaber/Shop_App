import '../../../data/model/change_favorite_model.dart';

abstract class HomeStates{}

class HomeInitialStates extends HomeStates{}

class HomeSuccessStates extends HomeStates{}

class HomeLoadingStates extends HomeStates{}

class HomeErrorStates extends HomeStates{
  final String error;

  HomeErrorStates(this.error);
}

///////////////////////////////////////
class ChangeFavoriteSuccessStates extends HomeStates{
  final ChangeFavoriteModel changeFavoriteModel;

  ChangeFavoriteSuccessStates(this.changeFavoriteModel);
}

class ChangeFavoriteLoadingStates extends HomeStates{}

class ChangeFavoriteErrorStates extends HomeStates{
  final String error;

  ChangeFavoriteErrorStates(this.error);
}