import 'package:flutter/material.dart';
import './question_page.dart';
import '../logic/position_generation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _goToQuestionPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return QuestionPage(startPositionFen: generatePosition());
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _goToQuestionPage(context),
          child: Text("New game"),
        ),
      ),
    );
  }
}
