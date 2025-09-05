import 'package:flutter/material.dart';
import 'package:whatsapp/screens/widgets/chats_widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Color(0xFF1dac66),
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFf6f5f3),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 50,
                width: 380,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: Icon(Icons.search),
                    ),
                    Text('  Ask Meta Al or Search'),
                  ],
                ),
              ),
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
            ChatCard(
              name: "Ahmed",
              message: "hi",
              image:
                  "https://imgs.search.brave.com/tix5a7ai5YKJzoa4MnAuXVsN0j837ZpHVfFXRokpqk4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jcmlz/dGlhbm8tcm9uYWxk/by1yZWFsLW1hZHJp/ZC0yMDc3NTI1NS5q/cGc",
              time: "04:50",
            ),
          ],
        ),
      ),
    );
  }
}
