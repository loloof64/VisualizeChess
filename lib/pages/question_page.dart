import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_chess_board/simple_chess_board.dart';
import 'package:visualize_chess/i18n/strings.g.dart';
import 'package:visualize_chess/pages/answer_page.dart';
import 'package:visualize_chess/pages/widgets/common_drawer.dart';
import 'package:visualize_chess/pages/widgets/moves_sequence.dart';
import 'package:visualize_chess/providers/game.dart';

class QuestionPage extends HookConsumerWidget {
  const QuestionPage({super.key});

  void _goToAnswerPage(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) {
          return const AnswerPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final maxWidth = MediaQuery.of(context).size.width;
    final boardWidth = maxWidth < 500 ? maxWidth : 500;
    final game = ref.watch(gameInstanceProvider);
    final firstMoveNumber = game.firstMoveNumber;
    final firstMoveIsWhiteTurn = game.firstMoveIsWhiteTurn;

    return Scaffold(
      drawer: CommonDrawer(),
      appBar: AppBar(
        title: Text(t.pages.question.title),
        leading: Builder(
          builder: (context) {
            return SizedBox(
              width: 80,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: IconButton(
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      icon: Icon(Icons.menu),
                    ),
                  ),
                  Flexible(
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
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
            ElevatedButton(
              onPressed: () => _goToAnswerPage(context),
              child: Text(t.pages.question.ready),
            ),
          ],
        ),
      ),
    );
  }
}
