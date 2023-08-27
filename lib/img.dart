import 'package:flutter/material.dart';

class Img extends StatelessWidget {
  const Img(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/quiz-logo.png',
        width: 250,
        color: const Color.fromARGB(144, 255, 255, 255),
      ),
      const SizedBox(
        height: 40,
      ),
      const Text(
        "Welcome to Maryam's Quiz\nLets find out if uk her better",
        style: TextStyle(
          fontSize: 25,
          color: Color.fromARGB(255, 241, 224, 245),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      OutlinedButton.icon(
        onPressed: startQuiz,
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          shadowColor: Colors.black,
        ),
        label: const Text("Start"),
        icon: const Icon(Icons.start_sharp),
      ),
    ]);
  }
}
