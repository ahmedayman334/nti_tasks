import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UpdateCard extends StatelessWidget {
  String name;

  String image;

  UpdateCard({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: CircleAvatar(
            backgroundColor: Colors.greenAccent,
            radius: 35,
            child: CircleAvatar(
              backgroundImage: NetworkImage(image),
              radius: 30,
            ),
          ),
        ),
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
      ],
    );
  }
}
