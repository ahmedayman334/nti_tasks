import 'package:flutter/material.dart';
import 'package:nti_training/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navTo() async {
    await Future.delayed(
      const Duration(seconds: 2),
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
          Text('Doctor App', style: TextStyle(fontSize: 50)),
          Divider(color: Colors.black, thickness: 3, indent: 90, endIndent: 90),
        ],
      ),
    );
  }
}
