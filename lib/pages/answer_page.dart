import 'package:editable_chess_board/editable_chess_board.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_chess_board/simple_chess_board.dart';
import 'package:visualize_chess/pages/widgets/moves_sequence.dart';
import 'package:visualize_chess/providers/game.dart';

const emptyBoardFen = "8/8/8/8/8/8/8/8 w - - 0 1";

class AnswerPage extends ConsumerStatefulWidget {
  const AnswerPage({super.key});

  @override
  ConsumerState<AnswerPage> createState() => _AnswerPageState();
}

class _AnswerPageState extends ConsumerState<AnswerPage> {
  final _positionController = PositionController(emptyBoardFen);

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final boardWidth = maxWidth < 500.0 ? maxWidth : 500.0;
    final game = ref.watch(gameInstanceProvider);

    return Column(
      spacing: 20,
      children: [
        EditableChessBoard(
          boardSize: boardWidth,
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
        SizedBox(
          width: 300.0,
          child: SimpleChessBoard(
            fen: game.startPositionFen,
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
          movesSequence: game.movesToImagine,
          firstMoveIsWhiteTurn: game.firstMoveIsWhiteTurn,
          firstMoveNumber: game.firstMoveNumber,
        ),
      ],
    );
  }
}
