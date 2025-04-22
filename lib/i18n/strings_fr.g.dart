///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsFr implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsFr({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
       $meta =
           meta ??
           TranslationMetadata(
             locale: AppLocale.fr,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <fr>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsFr _root = this; // ignore: unused_field

  @override
  TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsMiscFr misc = _TranslationsMiscFr._(_root);
  @override
  late final _TranslationsWidgetsFr widgets = _TranslationsWidgetsFr._(_root);
  @override
  late final _TranslationsPagesFr pages = _TranslationsPagesFr._(_root);
}

// Path: misc
class _TranslationsMiscFr implements TranslationsMiscEn {
  _TranslationsMiscFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get ok => 'Ok';
  @override
  String get cancel => 'Annuler';
  @override
  String get submit => 'Envoyer';
}

// Path: widgets
class _TranslationsWidgetsFr implements TranslationsWidgetsEn {
  _TranslationsWidgetsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsWidgetsGameParametersFr game_parameters = _TranslationsWidgetsGameParametersFr._(_root);
}

// Path: pages
class _TranslationsPagesFr implements TranslationsPagesEn {
  _TranslationsPagesFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesHomeFr home = _TranslationsPagesHomeFr._(_root);
  @override
  late final _TranslationsPagesQuestionFr question = _TranslationsPagesQuestionFr._(_root);
  @override
  late final _TranslationsPagesAnswerFr answer = _TranslationsPagesAnswerFr._(_root);
  @override
  late final _TranslationsPagesCorrectionFr correction = _TranslationsPagesCorrectionFr._(_root);
}

// Path: widgets.game_parameters
class _TranslationsWidgetsGameParametersFr implements TranslationsWidgetsGameParametersEn {
  _TranslationsWidgetsGameParametersFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get position_generation_minimum_moves => 'Coups minimum (pour génération de position): ';
  @override
  String get moves_to_play => 'Nombre de coups à jouer: ';
}

// Path: pages.home
class _TranslationsPagesHomeFr implements TranslationsPagesHomeEn {
  _TranslationsPagesHomeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Page accueil';
  @override
  String get game_parameters => 'Paramètres de jeu';
  @override
  String get new_game => 'Nouvelle partie';
  @override
  String get generation_error => 'Échec de la generation d\'une position et de sa séquence de coups.';
}

// Path: pages.question
class _TranslationsPagesQuestionFr implements TranslationsPagesQuestionEn {
  _TranslationsPagesQuestionFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Page question';
  @override
  String get ready => 'Je suis prêt';
}

// Path: pages.answer
class _TranslationsPagesAnswerFr implements TranslationsPagesAnswerEn {
  _TranslationsPagesAnswerFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Page réponse';
  @override
  String get illegal_position => 'Position illégale';
  @override
  String get your_answer => 'Votre réponse';
  @override
  String get question => 'Question';
}

// Path: pages.correction
class _TranslationsPagesCorrectionFr implements TranslationsPagesCorrectionEn {
  _TranslationsPagesCorrectionFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Page correction';
  @override
  String get correction => 'Correction';
  @override
  String get your_answer => 'Votre réponse';
  @override
  String get question => 'Question';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsFr {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'misc.ok':
        return 'Ok';
      case 'misc.cancel':
        return 'Annuler';
      case 'misc.submit':
        return 'Envoyer';
      case 'widgets.game_parameters.position_generation_minimum_moves':
        return 'Coups minimum (pour génération de position): ';
      case 'widgets.game_parameters.moves_to_play':
        return 'Nombre de coups à jouer: ';
      case 'pages.home.title':
        return 'Page accueil';
      case 'pages.home.game_parameters':
        return 'Paramètres de jeu';
      case 'pages.home.new_game':
        return 'Nouvelle partie';
      case 'pages.home.generation_error':
        return 'Échec de la generation d\'une position et de sa séquence de coups.';
      case 'pages.question.title':
        return 'Page question';
      case 'pages.question.ready':
        return 'Je suis prêt';
      case 'pages.answer.title':
        return 'Page réponse';
      case 'pages.answer.illegal_position':
        return 'Position illégale';
      case 'pages.answer.your_answer':
        return 'Votre réponse';
      case 'pages.answer.question':
        return 'Question';
      case 'pages.correction.title':
        return 'Page correction';
      case 'pages.correction.correction':
        return 'Correction';
      case 'pages.correction.your_answer':
        return 'Votre réponse';
      case 'pages.correction.question':
        return 'Question';
      default:
        return null;
    }
  }
}
