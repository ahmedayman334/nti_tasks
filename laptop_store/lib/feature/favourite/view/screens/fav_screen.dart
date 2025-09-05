import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laptop_store/feature/favourite/cubit/fav_cubit.dart';
import 'package:laptop_store/feature/favourite/cubit/fav_state.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  void initState() {
    super.initState();
    context.read<FavCubit>().getFromFavCubit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text(
          "My Favourites ",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0D47A1),
      ),
      body: BlocBuilder<FavCubit, FavState>(
        builder: (context, state) {
          if (state is FavLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is FavFailure) {
            return Center(child: Text("Error: ${state.errorMessage}"));
          } else if (state is FavGetSuccess) {
            if (state.favProducts.isEmpty) {
              return const Center(child: Text("No favourites yet!"));
            }

            return ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: state.favProducts.length,
              itemBuilder: (context, index) {
                final favItem = state.favProducts[index];

                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(12),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: favItem.image != null
                          ? Image.network(
                              favItem.image!,
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            )
                          : const Icon(Icons.image_not_supported, size: 60),
                    ),
                    title: Text(
                      favItem.name ?? "Unknown Product",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(
                      "Price: ${favItem.price} EGP",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        context.read<FavCubit>().removeFromFavCubit(
                          productId: favItem.id,
                        );

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "${favItem.name} removed from favourites",
                            ),
                            duration: const Duration(seconds: 1),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
