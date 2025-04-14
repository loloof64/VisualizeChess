import 'dart:math';

import 'package:chess/chess.dart';

final random = Random();

String generatePosition() {
  final chessLogic = Chess();
  final movesMovesToPlay = random.nextInt(200) + 1;
  final halfMovesToPlay = movesMovesToPlay * 2;

  for (int i = 0; i < halfMovesToPlay; i++) {
    final legalMoves = chessLogic.moves();
    final randomMove = legalMoves[random.nextInt(legalMoves.length)];
    chessLogic.move(randomMove);
  }
  return chessLogic.fen;
}
