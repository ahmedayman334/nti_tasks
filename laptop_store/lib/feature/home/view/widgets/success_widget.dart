import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laptop_store/constants/strings.dart';
import 'package:laptop_store/feature/cart/cubit/cart_cubit.dart';
import 'package:laptop_store/feature/home/data/products_model.dart';
import 'package:laptop_store/feature/favourite/cubit/fav_cubit.dart';
import 'package:laptop_store/feature/favourite/cubit/fav_state.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({super.key, required this.products});

  final List<ProductsModel> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            final bool inStock = product.countInStock > 0;

            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  productDetails,
                  arguments: product,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // صورة المنتج
                    Expanded(
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(18),
                            ),
                            child: Image.network(
                              product.image,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),

                          // ❤️ المفضلة
                          Positioned(
                            top: 8,
                            right: 8,
                            child: BlocBuilder<FavCubit, FavState>(
                              builder: (context, state) {
                                bool isFav = false;

                                if (state is FavGetSuccess) {
                                  isFav = state.favProducts.any(
                                    (item) => item.id == product.id,
                                  );
                                }

                                return GestureDetector(
                                  onTap: () {
                                    context.read<FavCubit>().addToFavCubit(
                                      productId: product.id,
                                    );

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          isFav
                                              ? "${product.name} removed from favourites"
                                              : "${product.name} added to favourites",
                                        ),
                                        duration: const Duration(
                                          milliseconds: 800,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    size: 28,
                                    color: isFav
                                        ? Colors.red
                                        : Colors.black.withOpacity(0.4),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    // البيانات
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // الاسم
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF0D47A1),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),

                          // الشركة
                          Text(
                            product.company,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),

                          const SizedBox(height: 4),

                          // السعر
                          Text(
                            "\$${product.price}",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),

                          // المخزون
                          Text(
                            inStock ? "In stock" : "Out of stock",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: inStock ? Colors.green : Colors.red,
                            ),
                          ),

                          const SizedBox(height: 6),

                          // زر الكارت
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0D47A1), // كحلي
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 12,
                              ),
                            ),
                            onPressed: inStock
                                ? () {
                                    BlocProvider.of<CartCubit>(
                                      context,
                                    ).addToCartCubit(productId: product.id);

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          "${product.name} added to cart",
                                        ),
                                        duration: const Duration(seconds: 2),
                                      ),
                                    );
                                  }
                                : null,
                            icon: const Icon(
                              Icons.shopping_cart,
                              size: 18,
                              color: Colors.white,
                            ),
                            label: const Text(
                              "Add to Cart",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // أبيض عشان يبان أوضح
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
