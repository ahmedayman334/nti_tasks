import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navTo() async {
    await Future.delayed(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PageHome()), // fixed
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Icon(Icons.phone, color: Color(0xFF1dac66), size: 50),
                Text(
                  'WhatsApp',
                  style: TextStyle(
                    color: Color(0xFF1dac66),
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
