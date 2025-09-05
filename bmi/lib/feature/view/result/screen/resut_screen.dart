import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  final int weight, height, age;
  final String gender;

  const ResultScreen({
    super.key,
    required this.bmi,
    required this.weight,
    required this.height,
    required this.age,
    required this.gender,
  });

  String getStatus() {
    if (bmi < 18.5) return "Underweight";
    if (bmi < 25) return "Normal";
    if (bmi < 30) return "Overweight";
    return "Obese";
  }

  Color getStatusColor() {
    if (bmi < 18.5) return Colors.orange;
    if (bmi < 25) return Colors.green;
    if (bmi < 30) return Colors.deepOrange;
    return Colors.red;
  }

  String getMessage() {
    switch (getStatus()) {
      case "Underweight":
        return "You should eat more 💪";
      case "Normal":
        return "Great job! Keep it up 🎉";
      case "Overweight":
        return "Time to get more active 🏃‍♂️";
      default:
        return "Please consult a doctor 🩺";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Your BMI Result"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [getStatusColor(), Colors.deepPurple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bmi.toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    getStatus(),
                    style: const TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Text(
              getMessage(),
              style: TextStyle(
                fontSize: 18,
                color: getStatusColor(),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  infoRow(Icons.person, "Gender", gender),
                  const Divider(),
                  infoRow(Icons.cake, "Age", "$age"),
                  const Divider(),
                  infoRow(Icons.height, "Height", "$height cm"),
                  const Divider(),
                  infoRow(Icons.monitor_weight, "Weight", "$weight kg"),
                ],
              ),
            ),

            const SizedBox(height: 40),

            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.replay, color: Colors.white),
              label: const Text(
                "Calculate Again",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,

                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.deepPurple),
        const SizedBox(width: 12),
        Text("$label: ", style: const TextStyle(fontWeight: FontWeight.w600)),
        const Spacer(),
        Text(value, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
