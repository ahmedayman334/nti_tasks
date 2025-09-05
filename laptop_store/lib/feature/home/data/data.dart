import 'package:dio/dio.dart';
import 'package:laptop_store/constants/strings.dart';
import 'package:laptop_store/feature/home/data/products_model.dart';

class ProductData {
  Dio dio = Dio();

  Future<List<ProductsModel>> getAllProducts() async {
    try {
      var response = await dio.get(productsUrl);

      List data = response.data["product"];
      List<ProductsModel> products = data
          .map((e) => ProductsModel.fromJson(e))
          .toList();
      return products;
    } catch (e) {
      print("Eror is ${e.toString()}");
      return [];
    }
  }
}
