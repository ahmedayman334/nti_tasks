import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const GenderScreen(),
    );
  }
}

// ==================== Screen 1: Choose Gender ====================
class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  String selectedGender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "BMI Calculator",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Please choose your gender",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),

            // Male Card
            GestureDetector(
              onTap: () => setState(() => selectedGender = "male"),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: selectedGender == "male"
                      ? Colors.green.shade100
                      : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.male, size: 40, color: Colors.blue),
                    const SizedBox(width: 15),
                    const Text("Male", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Female Card
            GestureDetector(
              onTap: () => setState(() => selectedGender = "female"),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: selectedGender == "female"
                      ? Colors.green.shade100
                      : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.female, size: 40, color: Colors.pink),
                    const SizedBox(width: 15),
                    const Text("Female", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: selectedGender.isEmpty
                  ? null
                  : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              BMIScreen(gender: selectedGender),
                        ),
                      );
                    },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.green,
              ),
              child: const Text("Continue", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}

// ==================== Screen 2: Enter Values ====================
class BMIScreen extends StatefulWidget {
  final String gender;
  const BMIScreen({super.key, required this.gender});

  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  int weight = 65;
  int age = 25;
  double height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Please Modify the values",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

            // Weight & Age Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Weight
                Column(
                  children: [
                    const Text("Weight (kg)", style: TextStyle(fontSize: 16)),
                    Text(
                      "$weight",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => setState(() => weight--),
                          icon: const Icon(
                            Icons.remove_circle,
                            color: Colors.orange,
                          ),
                        ),
                        IconButton(
                          onPressed: () => setState(() => weight++),
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Age
                Column(
                  children: [
                    const Text("Age", style: TextStyle(fontSize: 16)),
                    Text(
                      "$age",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => setState(() => age--),
                          icon: const Icon(
                            Icons.remove_circle,
                            color: Colors.orange,
                          ),
                        ),
                        IconButton(
                          onPressed: () => setState(() => age++),
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Height Slider
            Column(
              children: [
                const Text("Height (cm)", style: TextStyle(fontSize: 16)),
                Text(
                  "${height.toInt()}",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Slider(
                  value: height,
                  min: 100,
                  max: 220,
                  divisions: 120,
                  activeColor: Colors.orange,
                  onChanged: (value) => setState(() => height = value),
                ),
              ],
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                double bmi = weight / ((height / 100) * (height / 100));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      bmi: bmi,
                      weight: weight,
                      height: height.toInt(),
                      age: age,
                      gender: widget.gender,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.green,
              ),
              child: const Text("Calculate", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}

// ==================== Screen 3: Result ====================
class ResultScreen extends StatelessWidget {
  final double bmi;
  final int weight;
  final int height;
  final int age;
  final String gender;

  const ResultScreen({
    super.key,
    required this.bmi,
    required this.weight,
    required this.height,
    required this.age,
    required this.gender,
  });

  String getBMICategory() {
    if (bmi < 18.5) return "Underweight";
    if (bmi < 24.9) return "Normal";
    if (bmi < 29.9) return "Overweight";
    return "Obese";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Result")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your BMI:",
              style: TextStyle(fontSize: 22, color: Colors.grey[700]),
            ),
            Text(
              bmi.toStringAsFixed(1),
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Text(getBMICategory(), style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Text(
              "$weight kg | $height cm | $age years | $gender",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              "Healthy weight for the height:\n${(18.5 * (height / 100) * (height / 100)).toStringAsFixed(1)} kg - ${(24.9 * (height / 100) * (height / 100)).toStringAsFixed(1)} kg",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () =>
                  Navigator.popUntil(context, (route) => route.isFirst),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.green,
              ),
              child: const Text("Close", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
