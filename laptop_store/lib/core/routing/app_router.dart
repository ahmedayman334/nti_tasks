import 'package:flutter/material.dart';
import 'package:laptop_store/constants/strings.dart';
import 'package:laptop_store/feature/auth/view/screens/register_screen.dart';
import 'package:laptop_store/feature/cart/view/screens/cart_screen.dart';
import 'package:laptop_store/feature/favourite/view/screens/fav_screen.dart';
import 'package:laptop_store/feature/home/data/products_model.dart';
import 'package:laptop_store/feature/home/view/screens/products_screen.dart';
import 'package:laptop_store/feature/home/view/screens/product_details_screen.dart';
import 'package:laptop_store/feature/layout/layout.dart';
import 'package:laptop_store/feature/login/view/screens/login_screen.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case productsScreen:
        return MaterialPageRoute(builder: (_) => const ProductsScreen());
      case cartScreen:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case favScreen:
        return MaterialPageRoute(builder: (_) => const FavScreen());
      case productDetails:
        final product = settings.arguments as ProductsModel;
        return MaterialPageRoute(
          builder: (_) => ProductDetailsScreen(product: product),
        );
      case loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case registerScreen:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case mainLayoutScreen:
        return MaterialPageRoute(builder: (_) => const MainLayout());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Page Not Found"))),
        );
    }
  }
}
