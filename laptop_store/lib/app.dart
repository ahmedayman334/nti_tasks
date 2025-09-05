import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laptop_store/constants/strings.dart';
import 'package:laptop_store/feature/auth/cubit/auth_cubit.dart';
import 'package:laptop_store/feature/login/cubit/login_cubit.dart';
import 'feature/home/cubit/products_cubit.dart';
import 'feature/home/data/data.dart';
import 'feature/cart/cubit/cart_cubit.dart';
import 'feature/favourite/cubit/fav_cubit.dart';
import 'core/routing/app_router.dart';

class LaptopStoreApp extends StatelessWidget {
  const LaptopStoreApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductsCubit(ProductData())..getAllProducts(),
        ),
        BlocProvider(create: (context) => CartCubit()),
        BlocProvider(create: (context) => FavCubit()),
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => AuthCubit()),
      ],
      child: MaterialApp(
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: registerScreen,
      ),
    );
  }
}
