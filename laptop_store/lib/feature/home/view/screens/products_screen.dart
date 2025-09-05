import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laptop_store/constants/strings.dart';
import 'package:laptop_store/feature/home/cubit/products_cubit.dart';
import 'package:laptop_store/feature/home/cubit/products_state.dart';
import 'package:laptop_store/feature/home/view/widgets/loading_widget.dart';
import 'package:laptop_store/feature/home/view/widgets/success_widget.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA), // خلفية فاتحة مريحة
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Laptops Store",
          style: TextStyle(
            color: Color(0xFF0D47A1), // الأزرق الداكن
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, cartScreen);
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xFF0D47A1),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, favScreen);
            },
            icon: const Icon(Icons.favorite_outline, color: Color(0xFF0D47A1)),
          ),
        ],
      ),
      body: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          if (state is ProductsLoading) {
            return const LoadingWidget(products: []);
          } else if (state is ProductsSuccess) {
            return SuccessWidget(products: state.products);
          } else if (state is ProductsFailed) {
            return Center(
              child: Text(
                state.errorMessage,
                style: const TextStyle(color: Colors.red, fontSize: 18),
              ),
            );
          } else {
            return const Center(
              child: Text(
                "No products found",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            );
          }
        },
      ),
    );
  }
}
