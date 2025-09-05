import 'package:laptop_store/feature/favourite/data/fav_model.dart';

sealed class FavState {}

final class FavInitial extends FavState {}

final class FavAddSuccess extends FavState {}

final class FavLoading extends FavState {}

final class FavFailure extends FavState {
  final String errorMessage;
  FavFailure({required this.errorMessage});
}

final class FavGetSuccess extends FavState {
  final List<FavModel> favProducts;

  FavGetSuccess({required this.favProducts});
}

final class FavRemoveSuccess extends FavState {}
