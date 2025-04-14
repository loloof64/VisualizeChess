import 'package:chess/chess.dart';
import 'package:flutter/material.dart';
import './question_page.dart';
import '../logic/position_generation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  void _goToQuestionPage(BuildContext context) { 
    String startPositionFen;
    do {
      startPositionFen = generatePosition();
    } while(_isGameFinishedFor(startPositionFen));

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return QuestionPage(startPositionFen: generatePosition());
        },
      ),
    );
  }

  bool _isGameFinishedFor(String startPositionFen) {
    final chessLogic = Chess.fromFEN(startPositionFen);
    return chessLogic.game_over;
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
