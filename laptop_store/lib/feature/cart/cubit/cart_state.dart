import 'package:laptop_store/feature/cart/data/cart_model.dart';

sealed class CartState {}

final class CartInitial extends CartState {}

final class CartAddSuccess extends CartState {}

final class CartLoading extends CartState {}

final class CartFailure extends CartState {
  final String errorMessage;
  CartFailure({required this.errorMessage});
}

final class CartGetSuccess extends CartState {
  final List<CartModel> cartProducts;

  CartGetSuccess({required this.cartProducts});
}
