import 'package:flutter/material.dart';
import 'package:makeup_store/feature/home/view/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Divider(
                  color: Colors.orange.shade800,
                  indent: 50,
                  endIndent: 50,
                ),
              ),
              Text(
                "Beauty Corner",
                style: TextStyle(
                  color: Colors.orange.shade800,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(color: Colors.orange.shade800, indent: 50, endIndent: 50),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "MakeUp Store",
                  style: TextStyle(color: Colors.orange.shade800, fontSize: 25),
                ),
              ),
              Icon(Icons.shopping_bag, size: 80, color: Colors.orange.shade800),
              const SizedBox(height: 40),

              // Email
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              // Password
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 30),

              // Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
