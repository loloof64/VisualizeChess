import 'dart:math';

import 'package:chess/chess.dart';

final random = Random();

class NoLegalMoveException implements Exception {}

String generatePosition() {
  final chessLogic = Chess();
  final movesToPlayCount = random.nextInt(141);
  final halfMovesToPlay = movesToPlayCount * 2;

  for (int i = 0; i < halfMovesToPlay; i++) {
    final legalMoves = chessLogic.moves();
    if (legalMoves.isEmpty) {
      throw NoLegalMoveException();
    }
    final selectedIndex = random.nextInt(legalMoves.length);
    final randomMove = legalMoves[selectedIndex];
    chessLogic.move(randomMove);
  }
  return chessLogic.fen;
}

List<String> generateMovesSequences({required String startPositionFen, required int movesToPlayCount}) {
  final chessLogic = Chess.fromFEN(startPositionFen);
  final halfMovesToPlay = movesToPlayCount * 2;
  final movesSequence = <String>[]; 

  for (int i = 0; i < halfMovesToPlay; i++) {
    final legalMoves = chessLogic.moves();
    if (legalMoves.isEmpty) {
      throw NoLegalMoveException();
    }
    final randomMove = legalMoves[random.nextInt(legalMoves.length)];
    movesSequence.add(randomMove);
    chessLogic.move(randomMove);
  }

  return movesSequence;
}
