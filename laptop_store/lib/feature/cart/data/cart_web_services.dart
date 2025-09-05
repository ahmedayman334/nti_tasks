import 'package:dio/dio.dart';
import 'package:laptop_store/constants/strings.dart';
import 'package:laptop_store/feature/cart/data/cart_model.dart';

class CartData {
  Dio dio = Dio();

  addToCArt({required String productId}) async {
    await dio.post(
      cartAddUrl,
      data: {
        "nationalId": nationaId,
        "productId": productId,
        "quantity": 1,
      },
    );
  }

  Future<List<CartModel>> getFromCart() async {
    try {
      var response = await dio.get(
        cartGetUrl,
        data: {"nationalId": "01056710052789"},
      );

      List data = response.data["products"];
      List<CartModel> cartProducts =
          data.map((e) => CartModel.fromJson(e)).toList();
      return cartProducts;
    } catch (e) {
      print("Eror is ${e.toString()}");
      return [];
    }
  }
}
