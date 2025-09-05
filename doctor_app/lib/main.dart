import 'package:flutter/material.dart';
import 'package:nti_training/feature/home/view/screen/cart.dart';
import 'package:nti_training/feature/home/view/screen/home_screen.dart';
import 'package:nti_training/feature/home/view/screen/search_screen.dart';
import 'package:nti_training/feature/home/view/screen/splash_screen.dart';

void main() => runApp(DoctorApp());

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  List<Widget> pages = [HomeScreen(), SearchScreen(), CartScreen()];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (va) {
          setState(() {});
          currentIndex = va;
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'favoruite',
          ),
        ],
      ),

      body: pages[currentIndex],
    );
  }
}
