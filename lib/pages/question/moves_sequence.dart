import 'package:flutter/material.dart';
import './fan_converter.dart';

class MovesSequence extends StatelessWidget {
  final bool firstMoveIsWhiteTurn;
  final int firstMoveNumber;
  final List<String> movesSequence;

  const MovesSequence({
    super.key,
    required this.movesSequence,
    required this.firstMoveIsWhiteTurn,
    required this.firstMoveNumber,
  });

  List<Widget> _buildSequenceWidgets() {
    final sequenceWidgets = <Widget>[];

    final firstNode = _buildMoveNumberWidget(
      moveNumber: firstMoveNumber,
      isWhiteTurn: firstMoveIsWhiteTurn,
    );

    sequenceWidgets.add(firstNode);

    for (int i = 0; i < movesSequence.length; i++) {
      final mustAddMoveNumber =
          (((i % 2 == 0) && firstMoveIsWhiteTurn) ||
              ((i % 2 != 0) && !firstMoveIsWhiteTurn)) &&
          i > 0;
      if (mustAddMoveNumber) {
        sequenceWidgets.add(
          _buildMoveNumberWidget(
            moveNumber:
                firstMoveNumber + ((firstMoveIsWhiteTurn ? i : i + 1) ~/ 2),
            isWhiteTurn: true,
          ),
        );
      }
      sequenceWidgets.add(
        Text(
          movesSequence[i].toFan(
            whiteMove:
                (firstMoveIsWhiteTurn && i % 2 == 0) ||
                (!firstMoveIsWhiteTurn && i % 2 != 0),
          ),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
    }
    return sequenceWidgets;
  }

  Widget _buildMoveNumberWidget({
    required int moveNumber,
    required bool isWhiteTurn,
  }) {
    final caption = "$moveNumber.${isWhiteTurn ? "" : "..."}";
    return Text(caption, style: const TextStyle(fontWeight: FontWeight.bold));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(spacing: 10.0, children: _buildSequenceWidgets()),
    );
  }
}
