import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:simple_chess_board/simple_chess_board.dart';

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
          ],
        ),
      ),
    );
  }
}
