import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_chess_board/simple_chess_board.dart';
import 'package:visualize_chess/i18n/strings.g.dart';
import 'package:visualize_chess/logic/board_cells_highlights.dart';
import 'package:visualize_chess/pages/answer_page.dart';
import 'package:visualize_chess/pages/widgets/common_drawer.dart';
import 'package:visualize_chess/providers/game.dart';

class CorrectionPage extends ConsumerStatefulWidget {
  const CorrectionPage({super.key});

  @override
  ConsumerState<CorrectionPage> createState() => _CorrectionPageState();
}

class _CorrectionPageState extends ConsumerState<CorrectionPage> {
  @override
  Widget build(BuildContext context) {
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
    final userAnswerZone = SimpleChessBoard(
      fen: game.userSolutionFen,
      whitePlayerType: PlayerType.computer,
      blackPlayerType: PlayerType.computer,
      onMove: ({required ShortMove move}) {},
      onPromote: () async => null,
      onPromotionCommited: ({required moveDone, required pieceType}) {},
      onTap: ({required cellCoordinate}) {},
      cellHighlights: {},
      chessBoardColors: ChessBoardColors(),
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

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: CommonDrawer(),
        appBar: AppBar(
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
          title: Text(t.pages.correction.title),
          bottom: TabBar(
            tabs: [
              Tab(text: t.pages.correction.correction),
              Tab(text: t.pages.correction.your_answer),
              Tab(text: t.pages.correction.question),
            ],
          ),
        ),
        body: Center(
          child: TabBarView(
            children: [correctionZone, userAnswerZone, questionZone],
          ),
        ),
      ),
    );
  }
}
