import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/results_screen.dart';
import 'package:second_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAsnwers = [];
  var activescreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activescreen = 'questions-screen';
    });
  }

  void chooseAnswers(String answer) {
    selectedAsnwers.add(answer);
    if (selectedAsnwers.length == questions.length) {
      setState(() {
        //selectedAsnwers = [];
        activescreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget =
        StartScreen(const Color.fromARGB(255, 145, 40, 164), switchScreen);
    if (activescreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswers);
    }
    if (activescreen == 'results-screen') {
      screenWidget = ResultsScreen(chosenAnswers: selectedAsnwers);
    }
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromARGB(92, 255, 40, 230),
          body: screenWidget),
    );
  }
}
