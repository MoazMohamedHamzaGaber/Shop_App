
abstract class FavoriteStates{}

class FavoriteInitialStates extends FavoriteStates{}

class FavoriteSuccessStates extends FavoriteStates{}

class FavoriteLoadingStates extends FavoriteStates{}

class FavoriteErrorStates extends FavoriteStates{
  final String error;

  FavoriteErrorStates(this.error);
}