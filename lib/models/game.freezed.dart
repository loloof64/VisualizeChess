// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Game {

 bool get firstMoveIsWhiteTurn; int get firstMoveNumber; String get startPositionFen; String get userSolutionFen; String get expectedSolutionFen; int get movesToPlayCount; List<String> get movesToImagine;
/// Create a copy of Game
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameCopyWith<Game> get copyWith => _$GameCopyWithImpl<Game>(this as Game, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Game&&(identical(other.firstMoveIsWhiteTurn, firstMoveIsWhiteTurn) || other.firstMoveIsWhiteTurn == firstMoveIsWhiteTurn)&&(identical(other.firstMoveNumber, firstMoveNumber) || other.firstMoveNumber == firstMoveNumber)&&(identical(other.startPositionFen, startPositionFen) || other.startPositionFen == startPositionFen)&&(identical(other.userSolutionFen, userSolutionFen) || other.userSolutionFen == userSolutionFen)&&(identical(other.expectedSolutionFen, expectedSolutionFen) || other.expectedSolutionFen == expectedSolutionFen)&&(identical(other.movesToPlayCount, movesToPlayCount) || other.movesToPlayCount == movesToPlayCount)&&const DeepCollectionEquality().equals(other.movesToImagine, movesToImagine));
}


@override
int get hashCode => Object.hash(runtimeType,firstMoveIsWhiteTurn,firstMoveNumber,startPositionFen,userSolutionFen,expectedSolutionFen,movesToPlayCount,const DeepCollectionEquality().hash(movesToImagine));

@override
String toString() {
  return 'Game(firstMoveIsWhiteTurn: $firstMoveIsWhiteTurn, firstMoveNumber: $firstMoveNumber, startPositionFen: $startPositionFen, userSolutionFen: $userSolutionFen, expectedSolutionFen: $expectedSolutionFen, movesToPlayCount: $movesToPlayCount, movesToImagine: $movesToImagine)';
}


}

/// @nodoc
abstract mixin class $GameCopyWith<$Res>  {
  factory $GameCopyWith(Game value, $Res Function(Game) _then) = _$GameCopyWithImpl;
@useResult
$Res call({
 bool firstMoveIsWhiteTurn, int firstMoveNumber, String startPositionFen, String userSolutionFen, String expectedSolutionFen, int movesToPlayCount, List<String> movesToImagine
});




}
/// @nodoc
class _$GameCopyWithImpl<$Res>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._self, this._then);

  final Game _self;
  final $Res Function(Game) _then;

/// Create a copy of Game
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstMoveIsWhiteTurn = null,Object? firstMoveNumber = null,Object? startPositionFen = null,Object? userSolutionFen = null,Object? expectedSolutionFen = null,Object? movesToPlayCount = null,Object? movesToImagine = null,}) {
  return _then(_self.copyWith(
firstMoveIsWhiteTurn: null == firstMoveIsWhiteTurn ? _self.firstMoveIsWhiteTurn : firstMoveIsWhiteTurn // ignore: cast_nullable_to_non_nullable
as bool,firstMoveNumber: null == firstMoveNumber ? _self.firstMoveNumber : firstMoveNumber // ignore: cast_nullable_to_non_nullable
as int,startPositionFen: null == startPositionFen ? _self.startPositionFen : startPositionFen // ignore: cast_nullable_to_non_nullable
as String,userSolutionFen: null == userSolutionFen ? _self.userSolutionFen : userSolutionFen // ignore: cast_nullable_to_non_nullable
as String,expectedSolutionFen: null == expectedSolutionFen ? _self.expectedSolutionFen : expectedSolutionFen // ignore: cast_nullable_to_non_nullable
as String,movesToPlayCount: null == movesToPlayCount ? _self.movesToPlayCount : movesToPlayCount // ignore: cast_nullable_to_non_nullable
as int,movesToImagine: null == movesToImagine ? _self.movesToImagine : movesToImagine // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc


class _Game implements Game {
  const _Game({this.firstMoveIsWhiteTurn = false, this.firstMoveNumber = -1, this.startPositionFen = "", this.userSolutionFen = "", this.expectedSolutionFen = "", this.movesToPlayCount = -1, final  List<String> movesToImagine = const []}): _movesToImagine = movesToImagine;
  

@override@JsonKey() final  bool firstMoveIsWhiteTurn;
@override@JsonKey() final  int firstMoveNumber;
@override@JsonKey() final  String startPositionFen;
@override@JsonKey() final  String userSolutionFen;
@override@JsonKey() final  String expectedSolutionFen;
@override@JsonKey() final  int movesToPlayCount;
 final  List<String> _movesToImagine;
@override@JsonKey() List<String> get movesToImagine {
  if (_movesToImagine is EqualUnmodifiableListView) return _movesToImagine;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movesToImagine);
}


/// Create a copy of Game
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameCopyWith<_Game> get copyWith => __$GameCopyWithImpl<_Game>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Game&&(identical(other.firstMoveIsWhiteTurn, firstMoveIsWhiteTurn) || other.firstMoveIsWhiteTurn == firstMoveIsWhiteTurn)&&(identical(other.firstMoveNumber, firstMoveNumber) || other.firstMoveNumber == firstMoveNumber)&&(identical(other.startPositionFen, startPositionFen) || other.startPositionFen == startPositionFen)&&(identical(other.userSolutionFen, userSolutionFen) || other.userSolutionFen == userSolutionFen)&&(identical(other.expectedSolutionFen, expectedSolutionFen) || other.expectedSolutionFen == expectedSolutionFen)&&(identical(other.movesToPlayCount, movesToPlayCount) || other.movesToPlayCount == movesToPlayCount)&&const DeepCollectionEquality().equals(other._movesToImagine, _movesToImagine));
}


@override
int get hashCode => Object.hash(runtimeType,firstMoveIsWhiteTurn,firstMoveNumber,startPositionFen,userSolutionFen,expectedSolutionFen,movesToPlayCount,const DeepCollectionEquality().hash(_movesToImagine));

@override
String toString() {
  return 'Game(firstMoveIsWhiteTurn: $firstMoveIsWhiteTurn, firstMoveNumber: $firstMoveNumber, startPositionFen: $startPositionFen, userSolutionFen: $userSolutionFen, expectedSolutionFen: $expectedSolutionFen, movesToPlayCount: $movesToPlayCount, movesToImagine: $movesToImagine)';
}


}

/// @nodoc
abstract mixin class _$GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$GameCopyWith(_Game value, $Res Function(_Game) _then) = __$GameCopyWithImpl;
@override @useResult
$Res call({
 bool firstMoveIsWhiteTurn, int firstMoveNumber, String startPositionFen, String userSolutionFen, String expectedSolutionFen, int movesToPlayCount, List<String> movesToImagine
});




}
/// @nodoc
class __$GameCopyWithImpl<$Res>
    implements _$GameCopyWith<$Res> {
  __$GameCopyWithImpl(this._self, this._then);

  final _Game _self;
  final $Res Function(_Game) _then;

/// Create a copy of Game
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstMoveIsWhiteTurn = null,Object? firstMoveNumber = null,Object? startPositionFen = null,Object? userSolutionFen = null,Object? expectedSolutionFen = null,Object? movesToPlayCount = null,Object? movesToImagine = null,}) {
  return _then(_Game(
firstMoveIsWhiteTurn: null == firstMoveIsWhiteTurn ? _self.firstMoveIsWhiteTurn : firstMoveIsWhiteTurn // ignore: cast_nullable_to_non_nullable
as bool,firstMoveNumber: null == firstMoveNumber ? _self.firstMoveNumber : firstMoveNumber // ignore: cast_nullable_to_non_nullable
as int,startPositionFen: null == startPositionFen ? _self.startPositionFen : startPositionFen // ignore: cast_nullable_to_non_nullable
as String,userSolutionFen: null == userSolutionFen ? _self.userSolutionFen : userSolutionFen // ignore: cast_nullable_to_non_nullable
as String,expectedSolutionFen: null == expectedSolutionFen ? _self.expectedSolutionFen : expectedSolutionFen // ignore: cast_nullable_to_non_nullable
as String,movesToPlayCount: null == movesToPlayCount ? _self.movesToPlayCount : movesToPlayCount // ignore: cast_nullable_to_non_nullable
as int,movesToImagine: null == movesToImagine ? _self._movesToImagine : movesToImagine // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
