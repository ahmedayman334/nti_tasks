import 'package:flutter/material.dart';
import 'package:whatsapp/screens/widgets/chats_widgets.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Communities', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF1dac66),
      ),
      body: Column(
        children: [
          ChatCard(
            name: "Flutter",
            message: "StatFullWidegt {           ",
            image:
                "https://imgs.search.brave.com/qzLsF3cRO_EaRQMeVAda7SjnoSPlUkXpcLbI-5_at80/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuc2Vla2xvZ28u/Y29tL2xvZ28tcG5n/LzUwLzMvZmx1dHRl/ci1sb2dvLXBuZ19z/ZWVrbG9nby01MDA0/MjkucG5n",
            time: "04:50",
          ),
          ChatCard(
            name: "Flutter",
            message: "StatFullWidegt {           ",
            image:
                "https://imgs.search.brave.com/qzLsF3cRO_EaRQMeVAda7SjnoSPlUkXpcLbI-5_at80/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuc2Vla2xvZ28u/Y29tL2xvZ28tcG5n/LzUwLzMvZmx1dHRl/ci1sb2dvLXBuZ19z/ZWVrbG9nby01MDA0/MjkucG5n",
            time: "04:50",
          ),
          ChatCard(
            name: "Flutter",
            message: "StatFullWidegt {           ",
            image:
                "https://imgs.search.brave.com/qzLsF3cRO_EaRQMeVAda7SjnoSPlUkXpcLbI-5_at80/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuc2Vla2xvZ28u/Y29tL2xvZ28tcG5n/LzUwLzMvZmx1dHRl/ci1sb2dvLXBuZ19z/ZWVrbG9nby01MDA0/MjkucG5n",
            time: "04:50",
          ),
          ChatCard(
            name: "Flutter",
            message: "StatFullWidegt {           ",
            image:
                "https://imgs.search.brave.com/qzLsF3cRO_EaRQMeVAda7SjnoSPlUkXpcLbI-5_at80/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuc2Vla2xvZ28u/Y29tL2xvZ28tcG5n/LzUwLzMvZmx1dHRl/ci1sb2dvLXBuZ19z/ZWVrbG9nby01MDA0/MjkucG5n",
            time: "04:50",
          ),
        ],
      ),
    );
  }
}
