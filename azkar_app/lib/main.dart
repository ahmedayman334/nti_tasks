import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/feature/home/view/screens/cubit/text_cubit.dart';
import 'package:islamic_app/feature/home/view/screens/home_screen.dart';
import 'package:islamic_app/feature/home/view/screens/pray_screen.dart';
import 'package:islamic_app/feature/home/view/screens/splash_screen.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => TextCubit(),
      child: const MaterialApp(home: SplashScreen()),
    ),
  );
}

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  List<Widget> pages = [HomeScreen(), PrayScreen()];
  int curruntIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 0, 61, 55),
        selectedItemColor: Colors.white,
        // unselectedItemColor: Colors.black,
        currentIndex: curruntIndex,
        onTap: (va) {
          setState(() {
            curruntIndex = va;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.speaker_notes_rounded),
            label: 'الاذكار',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'الصلاه',
          ),
        ],
      ),

      body: pages[curruntIndex],
    );
  }
}
