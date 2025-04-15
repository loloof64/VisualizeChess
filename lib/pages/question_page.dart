import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_chess_board/simple_chess_board.dart';
import 'package:visualize_chess/pages/widgets/moves_sequence.dart';
import 'package:visualize_chess/providers/game.dart';

class QuestionPage extends HookConsumerWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final maxWidth = MediaQuery.of(context).size.width;
    final boardWidth = maxWidth < 500 ? maxWidth : 500;
    final game = ref.watch(gameInstanceProvider);
    final firstMoveNumber = game.firstMoveNumber;
    final firstMoveIsWhiteTurn = game.firstMoveIsWhiteTurn;

    return Scaffold(
      appBar: AppBar(title: const Text('Question Page')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: boardWidth.toDouble(),
              child: SimpleChessBoard(
                fen: game.startPositionFen,
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
              movesSequence: game.movesToImagine,
              firstMoveNumber: firstMoveNumber,
              firstMoveIsWhiteTurn: firstMoveIsWhiteTurn,
            ),
          ],
        ),
      ),
    );
  }
}
