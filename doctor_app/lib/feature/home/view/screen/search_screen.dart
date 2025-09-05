import 'package:flutter/material.dart';
import 'package:nti_training/feature/home/models/model.dart';
import 'package:nti_training/feature/home/view/widgets/costum_widgets.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find Doctors"),
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "Search a doctor",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 16),

            // Doctor List
            Expanded(
              child: ListView.builder(
                itemCount: homeList.length,
                itemBuilder: (context, index) {
                  return CustomWidgetCard(homeModel: homeList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
