import 'package:dio/dio.dart';
import 'package:laptop_store/constants/strings.dart';
import 'package:laptop_store/feature/favourite/data/fav_model.dart';

class FavData {
  Dio dio = Dio();

  addToFav({required String productId}) async {
    await dio.post(
      favUrl,

      data: {"nationalId": nationaId, "productId": productId},
    );
  }

  Future<List<FavModel>> getFromFav() async {
    try {
      var response = await dio.get(favUrl, data: {"nationalId": nationaId});

      List data = response.data['favoriteProducts'];
      List<FavModel> favProducts = data
          .map((e) => FavModel.fromJson(e))
          .toList();
      return favProducts;
    } catch (e) {
      return [];
    }
  }

  Future<void> removeFromFav({required String productId}) async {
    final response = await dio.delete(
      favUrl,
      data: {"nationalId": nationaId, "productId": productId},
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to remove from favourites');
    }
  }
}
