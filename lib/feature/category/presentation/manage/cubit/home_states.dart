abstract class CategoryStates{}

class CategoryInitialStates extends CategoryStates{}

class CategorySuccessStates extends CategoryStates{}

class CategoryLoadingStates extends CategoryStates{}

class CategoryErrorStates extends CategoryStates{
  final String error;

  CategoryErrorStates(this.error);
}