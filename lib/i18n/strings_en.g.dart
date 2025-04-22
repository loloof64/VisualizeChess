///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element

class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
       $meta =
           meta ??
           TranslationMetadata(
             locale: AppLocale.en,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final Translations _root = this; // ignore: unused_field

  Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

  // Translations
  late final TranslationsMiscEn misc = TranslationsMiscEn._(_root);
  late final TranslationsWidgetsEn widgets = TranslationsWidgetsEn._(_root);
  late final TranslationsPagesEn pages = TranslationsPagesEn._(_root);
}

// Path: misc
class TranslationsMiscEn {
  TranslationsMiscEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get ok => 'Ok';
  String get cancel => 'Cancel';
  String get submit => 'Submit';
}

// Path: widgets
class TranslationsWidgetsEn {
  TranslationsWidgetsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsWidgetsGameParametersEn game_parameters = TranslationsWidgetsGameParametersEn._(_root);
}

// Path: pages
class TranslationsPagesEn {
  TranslationsPagesEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPagesHomeEn home = TranslationsPagesHomeEn._(_root);
  late final TranslationsPagesQuestionEn question = TranslationsPagesQuestionEn._(_root);
  late final TranslationsPagesAnswerEn answer = TranslationsPagesAnswerEn._(_root);
  late final TranslationsPagesCorrectionEn correction = TranslationsPagesCorrectionEn._(_root);
}

// Path: widgets.game_parameters
class TranslationsWidgetsGameParametersEn {
  TranslationsWidgetsGameParametersEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get position_generation_minimum_moves => 'Minimum moves for position generation: ';
  String get moves_to_play => 'Moves to play: ';
}

// Path: pages.home
class TranslationsPagesHomeEn {
  TranslationsPagesHomeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Home page';
  String get game_parameters => 'Game parameters';
  String get new_game => 'New game';
  String get generation_error => 'Failed to generate a position and its moves sequence';
}

// Path: pages.question
class TranslationsPagesQuestionEn {
  TranslationsPagesQuestionEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Question page';
  String get ready => 'I\'m ready';
}

// Path: pages.answer
class TranslationsPagesAnswerEn {
  TranslationsPagesAnswerEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Answer page';
  String get illegal_position => 'Illegal position';
  String get your_answer => 'Your answer';
  String get question => 'Question';
}

// Path: pages.correction
class TranslationsPagesCorrectionEn {
  TranslationsPagesCorrectionEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Correction page';
  String get correction => 'Correction';
  String get your_answer => 'Your answer';
  String get question => 'Question';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'misc.ok':
        return 'Ok';
      case 'misc.cancel':
        return 'Cancel';
      case 'misc.submit':
        return 'Submit';
      case 'widgets.game_parameters.position_generation_minimum_moves':
        return 'Minimum moves for position generation: ';
      case 'widgets.game_parameters.moves_to_play':
        return 'Moves to play: ';
      case 'pages.home.title':
        return 'Home page';
      case 'pages.home.game_parameters':
        return 'Game parameters';
      case 'pages.home.new_game':
        return 'New game';
      case 'pages.home.generation_error':
        return 'Failed to generate a position and its moves sequence';
      case 'pages.question.title':
        return 'Question page';
      case 'pages.question.ready':
        return 'I\'m ready';
      case 'pages.answer.title':
        return 'Answer page';
      case 'pages.answer.illegal_position':
        return 'Illegal position';
      case 'pages.answer.your_answer':
        return 'Your answer';
      case 'pages.answer.question':
        return 'Question';
      case 'pages.correction.title':
        return 'Correction page';
      case 'pages.correction.correction':
        return 'Correction';
      case 'pages.correction.your_answer':
        return 'Your answer';
      case 'pages.correction.question':
        return 'Question';
      default:
        return null;
    }
  }
}
