import 'package:bmi/feature/view/result/screen/resut_screen.dart';
import 'package:flutter/material.dart';

class ValueScreen extends StatefulWidget {
  final String gender;

  const ValueScreen({super.key, required this.gender});

  @override
  State<ValueScreen> createState() => _ValueScreenState();
}

class _ValueScreenState extends State<ValueScreen> {
  int weight = 65;
  int age = 26;
  int height = 170;

  Widget numberCard(
    String label,
    int value,
    VoidCallback onAdd,
    VoidCallback onRemove,
  ) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Column(
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Text(
            '$value',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: onRemove,
                icon: const Icon(Icons.remove_circle_outline),
              ),
              IconButton(
                onPressed: onAdd,
                icon: const Icon(Icons.add_circle_outline),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget heightCard() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Column(
        children: [
          const Text(
            "Height (cm)",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            "$height",
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Slider(
            value: height.toDouble(),
            min: 100,
            max: 220,
            activeColor: Colors.deepPurple,
            onChanged: (value) => setState(() => height = value.toInt()),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter Your Info"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          heightCard(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              numberCard(
                "Weight (kg)",
                weight,
                () => setState(() => weight++),
                () => setState(() => weight--),
              ),
              numberCard(
                "Age",
                age,
                () => setState(() => age++),
                () => setState(() => age--),
              ),
            ],
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
            ),
            onPressed: () {
              double bmi = weight / ((height / 100) * (height / 100));
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    bmi: bmi,
                    weight: weight,
                    height: height,
                    age: age,
                    gender: widget.gender,
                  ),
                ),
              );
            },
            child: const Text(
              "Calculate BMI",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
