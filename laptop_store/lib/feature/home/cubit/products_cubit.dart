import 'package:bloc/bloc.dart';
import 'package:laptop_store/feature/home/cubit/products_state.dart';
import 'package:laptop_store/feature/home/data/data.dart';
import 'package:laptop_store/feature/home/data/products_model.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductData productData;

  ProductsCubit(this.productData) : super(ProductsInitial());

  Future<void> getAllProducts() async {
    emit(ProductsLoading());
    try {
      final List<ProductsModel> products = await productData.getAllProducts();

      emit(ProductsSuccess(products: products));
    } catch (e) {
      emit(ProductsFailed(errorMessage: e.toString()));
    }
  }
}
