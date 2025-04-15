import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';

@freezed
abstract class Game with _$Game {
  const factory Game({
    @Default(false) bool firstMoveIsWhiteTurn,
    @Default(-1) int firstMoveNumber,
    @Default("") String startPositionFen,
    @Default("") String userSolutionFen,
    @Default("") String expectedSolutionFen,
    @Default(-1) int movesToPlayCount,
    @Default([]) List<String> movesToImagine,
  }) = _Game;
}
