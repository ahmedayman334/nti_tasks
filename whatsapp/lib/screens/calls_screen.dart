import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calls', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF1dac66),
      ),
    );
  }
}
