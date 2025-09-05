import 'package:flutter/material.dart';
import 'package:makeup_store/data.dart';
import 'package:makeup_store/feature/home/models/products_model.dart';
import 'package:makeup_store/feature/home/view/widgets/custom_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 197, 135),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Products",
          style: TextStyle(
            fontSize: 26,
            color: Color.fromARGB(255, 236, 139, 4),
          ),
        ),
      ),
      body: FutureBuilder<List<ProductsModel>>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return CustomWidgetCard(product: products[index]);
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
