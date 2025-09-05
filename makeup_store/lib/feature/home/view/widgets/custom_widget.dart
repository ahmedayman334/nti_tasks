import 'package:flutter/material.dart';
import 'package:makeup_store/feature/home/models/products_model.dart';
import 'package:makeup_store/feature/home/view/screens/product_details_screen.dart';

class CustomWidgetCard extends StatelessWidget {
  const CustomWidgetCard({super.key, required this.product});
  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(product: product),
          ),
        );
      },
      child: Card(
        elevation: 6,
        shadowColor: Colors.black26,
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.network(
                product.thumbnail,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            const Divider(
              thickness: 2,
              indent: 40,
              endIndent: 40,
              color: Color.fromARGB(255, 241, 197, 135),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    product.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${product.price} \$",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 236, 139, 4),
                      fontWeight: FontWeight.bold,
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
