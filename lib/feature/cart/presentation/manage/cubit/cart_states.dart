
abstract class CartStates{}

class CartInitialStates extends CartStates{}

class CartSuccessStates extends CartStates{}

class CartLoadingStates extends CartStates{}

class CartErrorStates extends CartStates{
  final String error;

  CartErrorStates(this.error);
}