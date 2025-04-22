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
class TranslationsEs implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsEs({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
       $meta =
           meta ??
           TranslationMetadata(
             locale: AppLocale.es,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <es>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsEs _root = this; // ignore: unused_field

  @override
  TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsMiscEs misc = _TranslationsMiscEs._(_root);
  @override
  late final _TranslationsWidgetsEs widgets = _TranslationsWidgetsEs._(_root);
  @override
  late final _TranslationsPagesEs pages = _TranslationsPagesEs._(_root);
}

// Path: misc
class _TranslationsMiscEs implements TranslationsMiscEn {
  _TranslationsMiscEs._(this._root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get ok => 'De acuerdo';
  @override
  String get cancel => 'Anular';
  @override
  String get submit => 'Enviar';
}

// Path: widgets
class _TranslationsWidgetsEs implements TranslationsWidgetsEn {
  _TranslationsWidgetsEs._(this._root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsWidgetsGameParametersEs game_parameters = _TranslationsWidgetsGameParametersEs._(_root);
}

// Path: pages
class _TranslationsPagesEs implements TranslationsPagesEn {
  _TranslationsPagesEs._(this._root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesHomeEs home = _TranslationsPagesHomeEs._(_root);
  @override
  late final _TranslationsPagesQuestionEs question = _TranslationsPagesQuestionEs._(_root);
  @override
  late final _TranslationsPagesAnswerEs answer = _TranslationsPagesAnswerEs._(_root);
  @override
  late final _TranslationsPagesCorrectionEs correction = _TranslationsPagesCorrectionEs._(_root);
}

// Path: widgets.game_parameters
class _TranslationsWidgetsGameParametersEs implements TranslationsWidgetsGameParametersEn {
  _TranslationsWidgetsGameParametersEs._(this._root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get position_generation_minimum_moves => 'Movimientos mínimos (para generación de posición):';
  @override
  String get moves_to_play => 'Movimientos por jugar:';
}

// Path: pages.home
class _TranslationsPagesHomeEs implements TranslationsPagesHomeEn {
  _TranslationsPagesHomeEs._(this._root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Página de inicio';
  @override
  String get game_parameters => 'Parámetros del juego';
  @override
  String get new_game => 'Nuevo juego';
  @override
  String get generation_error => 'No se pudo generar una posición y su secuencia de movimientos.';
}

// Path: pages.question
class _TranslationsPagesQuestionEs implements TranslationsPagesQuestionEn {
  _TranslationsPagesQuestionEs._(this._root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Página de pregunta';
  @override
  String get ready => 'Soy listo';
}

// Path: pages.answer
class _TranslationsPagesAnswerEs implements TranslationsPagesAnswerEn {
  _TranslationsPagesAnswerEs._(this._root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Página de respuesta';
  @override
  String get illegal_position => 'Posición ilegal';
  @override
  String get your_answer => 'Su respuesta';
  @override
  String get question => 'Pregunta';
}

// Path: pages.correction
class _TranslationsPagesCorrectionEs implements TranslationsPagesCorrectionEn {
  _TranslationsPagesCorrectionEs._(this._root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Página de correción';
  @override
  String get correction => 'Corrección';
  @override
  String get your_answer => 'Su repuesta';
  @override
  String get question => 'Pregunta';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEs {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'misc.ok':
        return 'De acuerdo';
      case 'misc.cancel':
        return 'Anular';
      case 'misc.submit':
        return 'Enviar';
      case 'widgets.game_parameters.position_generation_minimum_moves':
        return 'Movimientos mínimos (para generación de posición):';
      case 'widgets.game_parameters.moves_to_play':
        return 'Movimientos por jugar:';
      case 'pages.home.title':
        return 'Página de inicio';
      case 'pages.home.game_parameters':
        return 'Parámetros del juego';
      case 'pages.home.new_game':
        return 'Nuevo juego';
      case 'pages.home.generation_error':
        return 'No se pudo generar una posición y su secuencia de movimientos.';
      case 'pages.question.title':
        return 'Página de pregunta';
      case 'pages.question.ready':
        return 'Soy listo';
      case 'pages.answer.title':
        return 'Página de respuesta';
      case 'pages.answer.illegal_position':
        return 'Posición ilegal';
      case 'pages.answer.your_answer':
        return 'Su respuesta';
      case 'pages.answer.question':
        return 'Pregunta';
      case 'pages.correction.title':
        return 'Página de correción';
      case 'pages.correction.correction':
        return 'Corrección';
      case 'pages.correction.your_answer':
        return 'Su repuesta';
      case 'pages.correction.question':
        return 'Pregunta';
      default:
        return null;
    }
  }
}
