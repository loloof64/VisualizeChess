import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:simple_chess_board/simple_chess_board.dart';
import 'package:visualize_chess/pages/question/moves_sequence.dart';

class QuestionPage extends HookWidget {
  final String startPositionFen;
  final List<String> movesToImagine;

  const QuestionPage({
    super.key,
    required this.startPositionFen,
    required this.movesToImagine,
  });

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final boardWidth = maxWidth < 500 ? maxWidth : 500;
    final firstMoveNumber = int.parse(startPositionFen.split(" ")[5]);
    final firstMoveIsWhiteTurn = startPositionFen.split(" ")[1] == "w";

    return Scaffold(
      appBar: AppBar(title: const Text('Question Page')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: boardWidth.toDouble(),
              child: SimpleChessBoard(
                fen: startPositionFen,
                whitePlayerType: PlayerType.computer,
                blackPlayerType: PlayerType.computer,
                onMove: ({required ShortMove move}) {},
                onPromote: () async => null,
                onPromotionCommited:
                    ({required moveDone, required pieceType}) {},
                onTap: ({required cellCoordinate}) {},
                cellHighlights: {},
                chessBoardColors: ChessBoardColors(),
              ),
            ),
            MovesSequence(
              movesSequence: movesToImagine,
              firstMoveNumber: firstMoveNumber,
              firstMoveIsWhiteTurn: firstMoveIsWhiteTurn,
            ),
          ],
        ),
      ),
    );
  }
}
