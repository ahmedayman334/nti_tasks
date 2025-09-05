import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/feature/home/view/screens/cubit/text_cubit.dart';
import 'package:islamic_app/feature/home/view/screens/cubit/text_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 94, 84),
        title: const Text(
          "أذكار المسلم",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<TextCubit, TextState>(
              builder: (context, state) {
                Color color = Colors.teal;
                var text = "بسم الله الرحمن الرحيم";

                if (state is AlamdulAlah) {
                  text = "الحمد لله";
                  color = Colors.redAccent;
                }

                if (state is SobhanAlah) {
                  text = "سبحان الله";
                  color = Colors.deepPurple;
                }

                if (state is AlahAkbar) {
                  text = "الله أكبر";
                  color = Colors.green;
                }

                if (state is LaElahElaAlah) {
                  text = "لا إله إلا الله";
                  color = Colors.orange;
                }

                if (state is LaQoutaElaBAlah) {
                  text = "لا حول ولا قوة إلا بالله";
                  color = Colors.blueAccent;
                }

                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 8,
                  color: color,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    alignment: Alignment.center,
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),

            // Grid Buttons
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 1.3,
                children: [
                  _buildButton(
                    context,
                    label: "الحمد لله",
                    color: Colors.redAccent,
                    audio: "audio/الحمد لله.mp3",
                    onTap: () => context.read<TextCubit>().alamdulAlah(),
                  ),
                  _buildButton(
                    context,
                    label: "سبحان الله",
                    color: Colors.deepPurple,
                    audio: "audio/سبحان الله.mp3",
                    onTap: () => context.read<TextCubit>().sobhanAlah(),
                  ),
                  _buildButton(
                    context,
                    label: "الله أكبر",
                    color: Colors.green,
                    audio: "audio/الله اكبر.mp3",
                    onTap: () => context.read<TextCubit>().alahAkbar(),
                  ),
                  _buildButton(
                    context,
                    label: "لا إله إلا الله",
                    color: Colors.orange,
                    audio: "audio/لا اله الا الله.mp3",
                    onTap: () => context.read<TextCubit>().laElahElaAlah(),
                  ),
                  _buildButton(
                    context,
                    label: "لا حول ولا قوة إلا بالله",
                    color: Colors.blueAccent,
                    audio: "audio/لا حول ولا قوة الا بالله.mp3",
                    onTap: () => context.read<TextCubit>().laQoutaElaBAlah(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
    BuildContext context, {
    required String label,
    required Color color,
    required String audio,
    required VoidCallback onTap,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.all(12),
      ),
      onPressed: () {
        final player = AudioPlayer();
        player.play(AssetSource(audio));
        onTap();
      },
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
