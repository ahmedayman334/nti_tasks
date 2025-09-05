import 'package:flutter/material.dart';
import 'package:whatsapp/screens/calls_screen.dart';
import 'package:whatsapp/screens/chat_screen.dart';
import 'package:whatsapp/screens/communities_screen.dart';
import 'package:whatsapp/screens/splash_screen.dart';
import 'package:whatsapp/screens/updates_screen.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

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
  List<Widget> pages = [
    ChatScreen(),
    UpdateScreen(),
    CommunitiesScreen(),
    CallsScreen(),
  ];
  int curruntIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curruntIndex,

        onTap: (va) {
          setState(() {
            curruntIndex = va;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_outlined),
            label: 'Communities',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Calls'),
        ],
      ),
      body: pages[curruntIndex],
    );
  }
}
