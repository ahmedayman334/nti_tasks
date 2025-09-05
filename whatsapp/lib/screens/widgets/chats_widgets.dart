import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatCard extends StatelessWidget {
  String name;
  String message;
  String image;
  String time;

  ChatCard({
    required this.name,
    required this.message,
    required this.image,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: CircleAvatar(backgroundImage: NetworkImage(image), radius: 30),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [Text(message, style: TextStyle(color: Colors.grey))],
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            time,
            style: TextStyle(color: const Color.fromARGB(255, 21, 9, 9)),
          ),
        ),
      ],
    );
  }
}
