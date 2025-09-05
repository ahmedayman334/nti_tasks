import 'package:flutter/material.dart';
import 'package:laptop_store/feature/home/data/products_model.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, required List<ProductsModel> products});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        color: const Color.fromARGB(255, 33, 243, 37),
      ),
    );
  }
}
