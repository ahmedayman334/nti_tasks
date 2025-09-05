import 'package:laptop_store/feature/home/data/products_model.dart';

sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class ProductsSuccess extends ProductsState {
  final List<ProductsModel> products;

  ProductsSuccess({required this.products});
}

final class ProductsLoading extends ProductsState {}

final class ProductsFailed extends ProductsState {
  final String errorMessage;
  ProductsFailed({required this.errorMessage});
}
