import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laptop_store/feature/favourite/data/fav_model.dart';
import 'package:laptop_store/feature/favourite/data/fav_web_services.dart';
import 'fav_state.dart';

class FavCubit extends Cubit<FavState> {
  FavCubit() : super(FavInitial());

  final FavData favData = FavData();

  Future<void> getFromFavCubit() async {
    emit(FavLoading());
    try {
      final List<FavModel> products = await favData.getFromFav();
      emit(FavGetSuccess(favProducts: products));
    } catch (e) {
      emit(FavFailure(errorMessage: e.toString()));
    }
  }

  Future<void> addToFavCubit({required String productId}) async {
    try {
      await favData.addToFav(productId: productId);
      await getFromFavCubit();
      emit(FavAddSuccess());
    } catch (e) {
      emit(FavFailure(errorMessage: e.toString()));
    }
  }

  Future<void> removeFromFavCubit({required String productId}) async {
    try {
      await favData.removeFromFav(productId: productId);
      await getFromFavCubit();

      if (state is FavGetSuccess) {
        final currentFavs = (state as FavGetSuccess).favProducts;
        final updatedFavs = currentFavs
            .where((p) => p.id != productId)
            .toList();
        emit(FavGetSuccess(favProducts: updatedFavs));
      }

      emit(FavRemoveSuccess());
    } catch (e) {
      emit(FavFailure(errorMessage: e.toString()));
    }
  }

  bool isFav(String productId, List<FavModel> currentFavs) {
    return currentFavs.any((p) => p.id == productId);
  }
}
