import 'package:flutter/material.dart';
import 'package:visualize_chess/i18n/strings.g.dart';

class GameParameters {
  final int minPositionGenerationMovesCount;
  final int movesToPlayCount;
  GameParameters({
    required this.minPositionGenerationMovesCount,
    required this.movesToPlayCount,
  });

  @override
  String toString() {
    return "GameParameters(minPositionGenerationMovesCount: $minPositionGenerationMovesCount, movesToPlayCount: $movesToPlayCount)";
  }
}

class NumberController {
  int value;

  NumberController({required int defaultValue}) : value = defaultValue;
}

class GameParametersWidget extends StatefulWidget {
  final NumberController minMovesCountController;
  final NumberController movesToPlayCountController;
  const GameParametersWidget({
    super.key,
    required this.minMovesCountController,
    required this.movesToPlayCountController,
  });

  @override
  State<GameParametersWidget> createState() => GameParametersWidgetState();
}

class GameParametersWidgetState extends State<GameParametersWidget> {
  int _minGenerationMovesCount = 1;
  int _movesToPlayCount = 1;

  @override
  void initState() {
    super.initState();
    _minGenerationMovesCount = widget.minMovesCountController.value;
    _movesToPlayCount = widget.movesToPlayCountController.value;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(t.widgets.game_parameters.position_generation_minimum_moves),
            Text("$_minGenerationMovesCount"),
          ],
        ),
        Slider(
          value: _minGenerationMovesCount.toDouble(),
          min: 1,
          max: 160,
          onChanged: (newValue) {
            setState(() {
              _minGenerationMovesCount = newValue.toInt();
            });
            widget.minMovesCountController.value = newValue.toInt();
          },
        ),
        Row(
          children: [
            Text(t.widgets.game_parameters.moves_to_play),
            Text("$_movesToPlayCount"),
          ],
        ),
        Slider(
          value: _movesToPlayCount.toDouble(),
          min: 1,
          max: 10,
          onChanged: (newValue) {
            setState(() {
              _movesToPlayCount = newValue.toInt();
            });
            widget.movesToPlayCountController.value = newValue.toInt();
          },
        ),
      ],
    );
  }
}
