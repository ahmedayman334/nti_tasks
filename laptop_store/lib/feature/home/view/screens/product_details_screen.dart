import 'package:flutter/material.dart';
import 'package:laptop_store/feature/home/data/products_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laptop_store/feature/cart/cubit/cart_cubit.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductsModel product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final bool inStock = product.countInStock > 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name, style: const TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF0D47A1), // كحلي زي الهوم
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// صورة رئيسية
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                product.image,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            /// صور إضافية في Scroll أفقي
            if (product.images.isNotEmpty) ...[
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.images.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        product.images[index],
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
            ],

            /// الاسم
            Text(
              product.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D47A1),
              ),
            ),
            const SizedBox(height: 8),

            /// الشركة
            Text(
              "Brand: ${product.company}",
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),

            /// السعر
            Text(
              "${product.price} EGP",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),

            /// المخزون
            Text(
              inStock ? "In stock (${product.countInStock})" : "Out of stock",
              style: TextStyle(
                fontSize: 16,
                color: inStock ? Colors.green : Colors.red,
              ),
            ),
            const SizedBox(height: 16),

            /// الوصف
            Text(
              product.description,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 24),

            /// زرار Add to Cart
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0D47A1), // كحلي
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 18,
                  ),
                ),
                onPressed: inStock
                    ? () {
                        BlocProvider.of<CartCubit>(
                          context,
                        ).addToCartCubit(productId: product.id);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("${product.name} added to cart"),
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      }
                    : null,
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 20,
                  color: Colors.white,
                ),
                label: const Text(
                  "Add to Cart",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
