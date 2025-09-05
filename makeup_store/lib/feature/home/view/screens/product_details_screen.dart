import 'package:flutter/material.dart';
import 'package:makeup_store/feature/home/models/products_model.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductsModel product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
        backgroundColor: const Color.fromARGB(255, 241, 197, 135),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // صور المنتج
            SizedBox(
              height: 300,
              child: PageView.builder(
                itemCount: product.images.length,
                itemBuilder: (context, index) => Image.network(
                  product.images[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "${product.price} EGP",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Description:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        "Brand: ${product.brand}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "Stock: ${product.stock}",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Rating: ${product.rating!.toStringAsFixed(1)}  ⭐",
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 24),
                  const Center(
                    child: Text(
                      "Scan for product link",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: QrImageView(
                      data: "https://dummyjson.com/products/",
                      version: QrVersions.auto,
                      size: 200,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(double.infinity, 48),
                    ),
                    onPressed: () {
                      // Add to cart logic
                    },
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
