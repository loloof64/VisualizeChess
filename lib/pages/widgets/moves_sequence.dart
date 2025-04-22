import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'fan_converter.dart';

const fontSize = 30.0;

class MovesSequence extends HookWidget {
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
          style: const TextStyle(fontFamily: "FreeSerif", fontSize: fontSize),
        ),
      );
    }
    return sequenceWidgets;
  }

  Widget _buildMoveNumberWidget({
    required int moveNumber,
    required bool isWhiteTurn,
  }) {
    final caption = "$moveNumber.${isWhiteTurn ? "" : ".."}";
    return Text(
      caption,
      style: const TextStyle(fontFamily: "FreeSerif", fontSize: fontSize),
    );
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    return Scrollbar(
      controller: scrollController,
      thumbVisibility: true,
      child: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(spacing: 10.0, children: _buildSequenceWidgets()),
      ),
    );
  }
}
