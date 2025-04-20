import 'dart:math';

import 'package:chess/chess.dart';

final random = Random();

class NoLegalMoveException implements Exception {}

final maxMovesToPlayCount = 160;

String generatePosition({int minMovesCount = 1}) {
  final shouldBeBlackTurn = random.nextBool();
  final chessLogic = Chess();
  final int valuesRange = maxMovesToPlayCount - minMovesCount + 1;
  final movesToPlayCount = random.nextInt(valuesRange+1) + minMovesCount;
  final halfMovesToPlay = movesToPlayCount * 2 + (shouldBeBlackTurn ? 1 : 0);

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

List<String> generateMovesSequences({
  required String startPositionFen,
  required int movesToPlayCount,
}) {
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


String getFinalPosition({
  required String startPositionFen,
  required List<String> movesSequence,
}) {
  final chessLogic = Chess.fromFEN(startPositionFen);
  for (final move in movesSequence) {
    chessLogic.move(move);
  }
  return chessLogic.fen;
}