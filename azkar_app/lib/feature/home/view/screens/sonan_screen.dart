import 'package:flutter/material.dart';

class SonanScreen extends StatelessWidget {
  const SonanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> sonan = [
      {"name": "سنة الفجر", "rak3at": "ركعتان قبل الفجر"},
      {"name": "سنة الظهر", "rak3at": "أربع قبل الظهر + ركعتان بعده"},
      {"name": "سنة العصر", "rak3at": "لا سنة راتبة مؤكدة"},
      {"name": "سنة المغرب", "rak3at": "ركعتان بعد المغرب"},
      {"name": "سنة العشاء", "rak3at": "ركعتان بعد العشاء"},
      {"name": "الوتر", "rak3at": "ركعة أو ثلاث بعد العشاء"},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 94, 84),
        title: const Text(
          "السنن الرواتب",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: sonan.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عمودين
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1, // نسبة الطول للعرض
          ),
          itemBuilder: (context, index) {
            return Card(
              color: const Color.fromARGB(255, 0, 94, 84),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.mosque, color: Colors.white, size: 40),
                    const SizedBox(height: 12),
                    Text(
                      sonan[index]["name"]!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      sonan[index]["rak3at"]!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
