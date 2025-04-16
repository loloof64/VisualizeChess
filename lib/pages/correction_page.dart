import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_chess_board/simple_chess_board.dart';
import 'package:visualize_chess/logic/board_cells_highlights.dart';
import 'package:visualize_chess/pages/answer_page.dart';
import 'package:visualize_chess/providers/game.dart';

class CorrectionPage extends ConsumerStatefulWidget {
  const CorrectionPage({super.key});

  @override
  ConsumerState<CorrectionPage> createState() => _CorrectionPageState();
}

class _CorrectionPageState extends ConsumerState<CorrectionPage> {
  var showQuestionZone = false;
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final game = ref.watch(gameInstanceProvider);
    final highlightedCells = generateCellsHighlights(
      expectedSolutionFen: game.expectedSolutionFen,
      userSolutionFen: game.userSolutionFen,
    );
    final questionZone = QuestionZone(
      startPositionFen: game.startPositionFen,
      movesToImagine: game.movesToImagine,
      firstMoveNumber: game.firstMoveNumber,
      firstMoveIsWhiteTurn: game.firstMoveIsWhiteTurn,
    );
    final correctionZone = SimpleChessBoard(
      fen: game.expectedSolutionFen,
      whitePlayerType: PlayerType.computer,
      blackPlayerType: PlayerType.computer,
      onMove: ({required ShortMove move}) {},
      onPromote: () async => null,
      onPromotionCommited: ({required moveDone, required pieceType}) {},
      onTap: ({required cellCoordinate}) {},
      cellHighlights: highlightedCells,
      chessBoardColors: ChessBoardColors(),
    );
    final content =
        isLandscape
            ? Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [correctionZone, if (showQuestionZone) questionZone],
            )
            : Stack(
              alignment: Alignment.center,
              children: [
                correctionZone,
                if (showQuestionZone)
                  Container(color: Colors.white54, child: questionZone),
              ],
            );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Correction Page'),
        actions: [
          IconButton(
            onPressed:
                () => setState(() {
                  showQuestionZone = !showQuestionZone;
                }),
            icon: Icon(
              Icons.notes,
              color: showQuestionZone ? Colors.red : Colors.green,
            ),
          ),
        ],
      ),
      body: Center(child: content),
    );
  }
}
