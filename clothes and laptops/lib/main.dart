import 'package:api/features/clothes/view/screen/clothes_screen.dart';
import 'package:api/features/laptop/view/screen/lap_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final screens = const [ClothesScreen(), LaptopScreen()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Products App")),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.store), label: "Clothes"),
            BottomNavigationBarItem(icon: Icon(Icons.laptop), label: "Laptops"),
          ],
        ),
      ),
    );
  }
}
