import 'package:editable_chess_board/editable_chess_board.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_chess_board/simple_chess_board.dart';
import 'package:visualize_chess/i18n/strings.g.dart';
import 'package:visualize_chess/pages/correction_page.dart';
import 'package:visualize_chess/pages/widgets/common_drawer.dart';
import 'package:visualize_chess/pages/widgets/moves_sequence.dart';
import 'package:visualize_chess/providers/game.dart';
import 'package:chess/chess.dart' as chess;

const emptyBoardFen = "8/8/8/8/8/8/8/8 w - - 0 1";

class AnswerPage extends ConsumerStatefulWidget {
  const AnswerPage({super.key});

  @override
  ConsumerState<AnswerPage> createState() => _AnswerPageState();
}

class _AnswerPageState extends ConsumerState<AnswerPage> {
  final _positionController = PositionController(emptyBoardFen);

  void _submitAnswer() {
    final newPositionFen = _positionController.position;
    final gameLogic = chess.Chess();
    final isLegalPosition = gameLogic.load(
      newPositionFen,
      check_validity: true,
    );
    final hasBothKings =
        gameLogic.kings[chess.Color.WHITE] > 0 &&
        gameLogic.kings[chess.Chess.BLACK] > 0;

    if (!isLegalPosition || !hasBothKings) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(t.pages.answer.illegal_position),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final game = ref.read(gameInstanceProvider.notifier);
    game.setUserSolutionFen(newPositionFen);

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) {
          return const CorrectionPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final boardWidth = maxWidth < 500.0 ? maxWidth : 500.0;
    final game = ref.watch(gameInstanceProvider);

    final answerZone = Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: boardWidth.toDouble(),
          height: boardWidth.toDouble(),
          child: EditableChessBoard(
            boardSize: boardWidth * 0.9,
            labels: Labels(
              playerTurnLabel: 'Player turn :',
              whitePlayerLabel: 'White',
              blackPlayerLabel: 'Black',
              availableCastlesLabel: 'Available castles :',
              whiteOOLabel: 'White O-O',
              whiteOOOLabel: 'White O-O-O',
              blackOOLabel: 'Black O-O',
              blackOOOLabel: 'Black O-O-O',
              enPassantLabel: 'En passant square :',
              drawHalfMovesCountLabel: 'Draw half moves count : ',
              moveNumberLabel: 'Move number : ',
              submitFieldLabel: 'Validate',
              currentPositionLabel: 'Current position: ',
              copyFenLabel: 'Copy position',
              pasteFenLabel: 'Paste position',
              resetPosition: 'Reset position',
              standardPosition: 'Standard position',
              erasePosition: 'Erase position',
            ),
            controller: _positionController,
            showAdvancedOptions: false,
          ),
        ),
        ElevatedButton(onPressed: _submitAnswer, child: Text(t.misc.submit)),
      ],
    );

    final questionZone = QuestionZone(
      startPositionFen: game.startPositionFen,
      movesToImagine: game.movesToImagine,
      firstMoveNumber: game.firstMoveNumber,
      firstMoveIsWhiteTurn: game.firstMoveIsWhiteTurn,
    );

    return DefaultTabController(
      length: 2,
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
          title: Text(t.pages.answer.title),
          bottom: TabBar(
            tabs: [
              Tab(text: t.pages.answer.your_answer),
              Tab(text: t.pages.answer.question),
            ],
          ),
        ),
        body: TabBarView(children: [answerZone, questionZone]),
      ),
    );
  }
}

class QuestionZone extends StatelessWidget {
  final String startPositionFen;
  final List<String> movesToImagine;
  final bool firstMoveIsWhiteTurn;
  final int firstMoveNumber;

  const QuestionZone({
    super.key,
    required this.startPositionFen,
    required this.movesToImagine,
    required this.firstMoveIsWhiteTurn,
    required this.firstMoveNumber,
  });

  @override
  Widget build(BuildContext context) {
    final minScreenSize = MediaQuery.of(context).size.shortestSide;
    final width = minScreenSize * 0.75;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: width,
          child: SimpleChessBoard(
            fen: startPositionFen,
            whitePlayerType: PlayerType.computer,
            blackPlayerType: PlayerType.computer,
            onMove: ({required ShortMove move}) {},
            onPromote: () async {
              return null;
            },
            onPromotionCommited:
                ({
                  required ShortMove moveDone,
                  required PieceType pieceType,
                }) {},
            onTap: ({required String cellCoordinate}) {},
            chessBoardColors: ChessBoardColors(),
            cellHighlights: {},
          ),
        ),
        MovesSequence(
          movesSequence: movesToImagine,
          firstMoveIsWhiteTurn: firstMoveIsWhiteTurn,
          firstMoveNumber: firstMoveNumber,
        ),
      ],
    );
  }
}
