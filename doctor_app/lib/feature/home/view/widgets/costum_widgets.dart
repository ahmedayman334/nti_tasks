import 'package:flutter/material.dart';
import 'package:nti_training/feature/home/models/model.dart';

class CustomWidgetCard extends StatelessWidget {
  final HomeModel homeModel;

  const CustomWidgetCard({super.key, required this.homeModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      homeModel.image,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'Available At',
                    style: TextStyle(color: Color.fromARGB(255, 2, 227, 118)),
                  ),
                  Text(
                    '10:00 Am',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),

              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      homeModel.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      homeModel.description,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 2, 227, 118),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // زرار "Book Now"
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text("Book Now"),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.favorite, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
