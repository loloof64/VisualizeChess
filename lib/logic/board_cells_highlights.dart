import 'package:flutter/material.dart';
import 'package:chess/chess.dart' as chess;

const alphaLevel = 70;

/*
Return a map of cells to highlight
=> green for a user cell that has the same piece as the matching correction cell
=> red for a user cell that has a different piece than the matching correction cell
=> don't highlight if the cell is empty and the matching correction cell also
=> red if the user cell is empty and the matching correction cell has a piece
*/

Map<String, Color> generateCellsHighlights({
  required String expectedSolutionFen,
  required String userSolutionFen,
}) {
  final expectedBoard = chess.Chess.fromFEN(expectedSolutionFen);
  final userBoard = chess.Chess.fromFEN(userSolutionFen);

  final result = <String, Color>{};

  for (int i = 0; i < 64; i++) {
    final expectedPiece = expectedBoard.get(_getSquareNameFromIndex(i));
    final userPiece = userBoard.get(_getSquareNameFromIndex(i));

    if (expectedPiece == null && userPiece == null) {
      result[_getSquareNameFromIndex(i)] = Colors.green.withAlpha(alphaLevel);
      continue;
    }
    if (expectedPiece == null && userPiece != null) {
      result[_getSquareNameFromIndex(i)] = Colors.red.withAlpha(alphaLevel);
      continue;
    }
    if (expectedPiece != null && userPiece == null) {
      result[_getSquareNameFromIndex(i)] = Colors.red.withAlpha(alphaLevel);
      continue;
    }
    if (expectedPiece?.type == userPiece?.type &&
        expectedPiece?.color == userPiece?.color) {
      result[_getSquareNameFromIndex(i)] = Colors.green.withAlpha(alphaLevel);
      continue;
    }
  }

  return result;
}

String _getSquareNameFromIndex(int index) {
  return String.fromCharCode('a'.codeUnitAt(0) + index % 8) +
      String.fromCharCode('1'.codeUnitAt(0) + (index / 8).floor());
}
