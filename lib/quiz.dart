import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Inisialisasi variabel untuk menyimpan layar aktif
  // late Widget activeScreen;
  var activeScreen = "start-screen";

  @override
  void initState() {
    super.initState();
    activeScreen = "start-screen";
  }

  // Fungsi untuk mengganti layar ke QuestionsScreen
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : QuestionsScreen();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Quiz App')),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green, Colors.white],
            ),
          ),
          child: screenWidget,
          ), // Tampilkan layar aktif
      ),
    );
  }
}
