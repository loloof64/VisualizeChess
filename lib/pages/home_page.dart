import 'package:chess/chess.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:visualize_chess/providers/game.dart';
import 'question_page.dart';
import '../logic/position_generation.dart';

const maxAttempts = 10;
const movesToPlayCount = 2;

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  void _goToQuestionPage(BuildContext context, WidgetRef ref) {
    String startPositionFen = Chess.DEFAULT_POSITION;
    List<String> movesToImagine = [];

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

    final firstMoveIsWhiteTurn = startPositionFen.split(" ")[1] == "w";
    final firstMoveNumber = int.parse(startPositionFen.split(" ")[5]);

    final gameNotifier = ref.read(gameInstanceProvider.notifier);
    gameNotifier.setStartPositionFen(startPositionFen);
    gameNotifier.setMovesToPlayCount(movesToPlayCount);
    gameNotifier.setMovesToImagine(movesToImagine);
    gameNotifier.setFirstMoveIsWhiteTurn(firstMoveIsWhiteTurn);
    gameNotifier.setFirstMoveNumber(firstMoveNumber);

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return QuestionPage();
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
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _goToQuestionPage(context, ref),
          child: Text("New game"),
        ),
      ),
    );
  }
}
