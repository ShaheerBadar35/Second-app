import 'package:flutter/material.dart';
import 'package:second_app/img.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.c1, this.startQuiz, {super.key});
  final Color c1;
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(color: c1),
      child: Center(
        child: Img(startQuiz),
      ),
    );
  }
}
