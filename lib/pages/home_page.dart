import 'package:chess/chess.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:visualize_chess/pages/widgets/game_parameters.dart';
import 'package:visualize_chess/providers/game.dart';
import 'question_page.dart';
import '../logic/position_generation.dart';
import 'package:visualize_chess/i18n/strings.g.dart';

const maxAttempts = 10;

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  void _purposeGameParametersModal(BuildContext context, WidgetRef ref) async {
    final gameParameters = await showDialog<GameParameters>(
      context: context,
      builder: (context) {
        NumberController minMovesCountController = NumberController(
          defaultValue: 1,
        );
        NumberController movesToPlayCountController = NumberController(
          defaultValue: 1,
        );
        return AlertDialog(
          title: Text(t.pages.home.game_parameters),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                t.misc.cancel,
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(
                  GameParameters(
                    minPositionGenerationMovesCount:
                        minMovesCountController.value,
                    movesToPlayCount: movesToPlayCountController.value,
                  ),
                );
              },
              child: Text(
                t.misc.ok,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ],
          content: GameParametersWidget(
            minMovesCountController: minMovesCountController,
            movesToPlayCountController: movesToPlayCountController,
          ),
        );
      },
    );

    if (gameParameters == null) {
      return;
    }

    if (!context.mounted) {
      return;
    }

    _goToQuestionPage(context, ref, gameParameters);
  }

  void _goToQuestionPage(
    BuildContext context,
    WidgetRef ref,
    GameParameters gameParameters,
  ) {
    String startPositionFen = Chess.DEFAULT_POSITION;
    List<String> movesToImagine = [];

    for (int i = 0; i < maxAttempts; i++) {
      try {
        startPositionFen = _generateStartPosition(
          gameParameters.minPositionGenerationMovesCount,
        );
        movesToImagine = generateMovesToImagine(
          startPositionFen: startPositionFen,
          movesToPlayCount: gameParameters.movesToPlayCount,
        );
        if (movesToImagine.length == 2 * gameParameters.movesToPlayCount) {
          break;
        }
      } on NoLegalMoveException {
        continue;
      }
    }

    final isError =
        movesToImagine.length != 2 * gameParameters.movesToPlayCount;
    if (isError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(t.pages.home.generation_error),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final firstMoveIsWhiteTurn = startPositionFen.split(" ")[1] == "w";
    final firstMoveNumber = int.parse(startPositionFen.split(" ")[5]);
    final expectedSolutionFen = getFinalPosition(
      startPositionFen: startPositionFen,
      movesSequence: movesToImagine,
    );

    final gameNotifier = ref.read(gameInstanceProvider.notifier);
    gameNotifier.setStartPositionFen(startPositionFen);
    gameNotifier.setMovesToPlayCount(gameParameters.movesToPlayCount);
    gameNotifier.setMovesToImagine(movesToImagine);
    gameNotifier.setFirstMoveIsWhiteTurn(firstMoveIsWhiteTurn);
    gameNotifier.setFirstMoveNumber(firstMoveNumber);
    gameNotifier.setExpectedSolutionFen(expectedSolutionFen);

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

  String _generateStartPosition(int minPositionGenerationMovesCount) {
    String startPositionFen;
    do {
      startPositionFen = generatePosition(
        minMovesCount: minPositionGenerationMovesCount,
      );
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
      appBar: AppBar(title: Text(t.pages.home.title)),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _purposeGameParametersModal(context, ref),
          child: Text(t.pages.home.new_game),
        ),
      ),
    );
  }
}
