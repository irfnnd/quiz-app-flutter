import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return  Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
        ),
        const SizedBox(height: 80),
        const Text(
          "Belajar Flutter",
          style: TextStyle(color: Colors.white70, fontSize: 24),
          ),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: (){
            startQuiz();
          },
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.black26), 
          child: const Text("Start Quiz"))

      ],
    ));
  }
}
