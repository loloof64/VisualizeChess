///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

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
           );

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final Translations _root = this; // ignore: unused_field

  Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

  // Translations
  late final TranslationsMiscEn misc = TranslationsMiscEn.internal(_root);
  late final TranslationsWidgetsEn widgets = TranslationsWidgetsEn.internal(_root);
  late final TranslationsPagesEn pages = TranslationsPagesEn.internal(_root);
}

// Path: misc
class TranslationsMiscEn {
  TranslationsMiscEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get ok => 'Ok';
  String get cancel => 'Cancel';
  String get submit => 'Submit';
}

// Path: widgets
class TranslationsWidgetsEn {
  TranslationsWidgetsEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsWidgetsGameParametersEn game_parameters = TranslationsWidgetsGameParametersEn.internal(_root);
}

// Path: pages
class TranslationsPagesEn {
  TranslationsPagesEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPagesHomeEn home = TranslationsPagesHomeEn.internal(_root);
  late final TranslationsPagesQuestionEn question = TranslationsPagesQuestionEn.internal(_root);
  late final TranslationsPagesAnswerEn answer = TranslationsPagesAnswerEn.internal(_root);
  late final TranslationsPagesCorrectionEn correction = TranslationsPagesCorrectionEn.internal(_root);
}

// Path: widgets.game_parameters
class TranslationsWidgetsGameParametersEn {
  TranslationsWidgetsGameParametersEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get position_generation_minimum_moves => 'Minimum moves for position generation: ';
  String get moves_to_play => 'Moves to play: ';
}

// Path: pages.home
class TranslationsPagesHomeEn {
  TranslationsPagesHomeEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Home page';
  String get game_parameters => 'Game parameters';
  String get new_game => 'New game';
  String get generation_error => 'Failed to generate a position and its moves sequence';
}

// Path: pages.question
class TranslationsPagesQuestionEn {
  TranslationsPagesQuestionEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Question page';
  String get ready => 'I\'m ready';
}

// Path: pages.answer
class TranslationsPagesAnswerEn {
  TranslationsPagesAnswerEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Answer page';
  String get illegal_position => 'Illegal position';
  String get your_answer => 'Your answer';
  String get question => 'Question';
}

// Path: pages.correction
class TranslationsPagesCorrectionEn {
  TranslationsPagesCorrectionEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Correction page';
  String get correction => 'Correction';
  String get your_answer => 'Your answer';
  String get question => 'Question';
}
