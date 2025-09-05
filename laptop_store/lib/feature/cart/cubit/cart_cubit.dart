import 'package:bloc/bloc.dart';
import 'package:laptop_store/feature/cart/cubit/cart_state.dart';
import 'package:laptop_store/feature/cart/data/cart_model.dart';
import 'package:laptop_store/feature/cart/data/cart_web_services.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final CartData cartData = CartData();

  Future<void> addToCartCubit({required String productId}) async {
    try {
      await cartData.addToCArt(productId: productId);
    } catch (e) {
      emit(CartFailure(errorMessage: e.toString()));
    }
  }

  Future<void> getFromCartCubit() async {
    emit(CartLoading());
    try {
      final List<CartModel> cartProducts = await cartData.getFromCart();
      emit(CartGetSuccess(cartProducts: cartProducts)); // ✅ هنا بترجع البيانات
    } catch (e) {
      emit(CartFailure(errorMessage: e.toString()));
    }
  }
}
