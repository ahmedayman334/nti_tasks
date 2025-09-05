import 'package:dio/dio.dart';
import 'package:makeup_store/feature/home/models/products_model.dart';

Future<List<ProductsModel>> getData() async {
  var response = await Dio().get("https://dummyjson.com/products?limit=10");
  List data = response.data["products"];
  List<ProductsModel> listModel = data
      .map((e) => ProductsModel.fromJson(e))
      .toList();

  return listModel;
}
