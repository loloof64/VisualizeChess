import 'package:chess/chess.dart';
import 'package:flutter/material.dart';
import './question_page.dart';
import '../logic/position_generation.dart';

const maxAttempts = 10;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _goToQuestionPage(BuildContext context) {
    String startPositionFen = Chess.DEFAULT_POSITION;
    List<String> movesToImagine = [];
    final movesToPlayCount = 2;

    for (int i = 0; i < maxAttempts; i++) {
      try {
        startPositionFen = _generateStartPosition();
        movesToImagine = generateMovesToImagine(
          startPositionFen: startPositionFen,
          movesToPlayCount: movesToPlayCount,
        );
        if (movesToImagine.length == 2 * movesToPlayCount) {
          break;
        }
      } on NoLegalMoveException {
        continue;
      }
    }

    final isError = movesToImagine.length != 2 * movesToPlayCount;
    if (isError) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to generate a position and its moves sequence'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return QuestionPage(
            startPositionFen: startPositionFen,
            movesToImagine: movesToImagine,
          );
        },
      ),
    );
  }

  bool _isGameFinishedFor(String startPositionFen) {
    final chessLogic = Chess.fromFEN(startPositionFen);
    return chessLogic.game_over;
  }

  String _generateStartPosition() {
    String startPositionFen;
    do {
      startPositionFen = generatePosition();
    } while (_isGameFinishedFor(startPositionFen));
    return startPositionFen;
  }

  List<String> generateMovesToImagine({
    required String startPositionFen,
    required int movesToPlayCount,
  }) {
    return generateMovesSequences(
      startPositionFen: startPositionFen,
      movesToPlayCount: movesToPlayCount,
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
