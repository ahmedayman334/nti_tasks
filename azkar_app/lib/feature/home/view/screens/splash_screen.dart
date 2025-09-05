import 'package:flutter/material.dart';
import 'package:islamic_app/main.dart';

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
        MaterialPageRoute(builder: (context) => const PageHome()),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    navTo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/light.png", fit: BoxFit.cover),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 80,
                ),
                const SizedBox(height: 70),
                const Text(
                  'أذْكار المُسلِم',
                  style: TextStyle(
                    wordSpacing: 40,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                  ),
                ),
                Divider(
                  color: Colors.white,
                  endIndent: 50,
                  indent: 50,
                  thickness: 1,
                  radius: BorderRadius.circular(9),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
