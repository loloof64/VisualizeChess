import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:visualize_chess/models/game.dart';

part 'game.g.dart';

@Riverpod(keepAlive: true)
class GameInstance extends _$GameInstance {
  @override
  Game build() {
    return Game();
  }

  void setStartPositionFen(String startPositionFen) {
    state = state.copyWith(startPositionFen: startPositionFen);
  }

  void setMovesToPlayCount(int movesToPlayCount) {
    state = state.copyWith(movesToPlayCount: movesToPlayCount);
  }

  void setMovesToImagine(List<String> movesToImagine) {
    state = state.copyWith(movesToImagine: movesToImagine);
  }

  void setExpectedSolutionFen(String expectedSolutionFen) {
    state = state.copyWith(expectedSolutionFen: expectedSolutionFen);
  }

  void setUserSolutionFen(String userSolutionFen) {
    state = state.copyWith(userSolutionFen: userSolutionFen);
  }

  void setFirstMoveIsWhiteTurn(bool firstMoveIsWhiteTurn) {
    state = state.copyWith(firstMoveIsWhiteTurn: firstMoveIsWhiteTurn);
  }

  void setFirstMoveNumber(int firstMoveNumber) {
    state = state.copyWith(firstMoveNumber: firstMoveNumber);
  }
}
