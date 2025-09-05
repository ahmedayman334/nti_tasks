import 'package:flutter/material.dart';
import 'package:recipeapp/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navTo() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RecipesScreen()), // fixed
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    navTo(); // call function
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Easy Recipes',
              style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 255, 61, 2),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Fast and Healthy',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
