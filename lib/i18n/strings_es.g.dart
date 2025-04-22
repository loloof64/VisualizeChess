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
class TranslationsEs extends Translations {
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
           ),
       super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

  /// Metadata for the translations of <es>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

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
class _TranslationsMiscEs extends TranslationsMiscEn {
  _TranslationsMiscEs._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _TranslationsWidgetsEs extends TranslationsWidgetsEn {
  _TranslationsWidgetsEs._(TranslationsEs root) : this._root = root, super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsWidgetsGameParametersEs game_parameters = _TranslationsWidgetsGameParametersEs._(_root);
}

// Path: pages
class _TranslationsPagesEs extends TranslationsPagesEn {
  _TranslationsPagesEs._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _TranslationsWidgetsGameParametersEs extends TranslationsWidgetsGameParametersEn {
  _TranslationsWidgetsGameParametersEs._(TranslationsEs root) : this._root = root, super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get position_generation_minimum_moves => 'Movimientos mínimos desde inicio:';
  @override
  String get moves_to_play => 'Cuento de movimientos:';
}

// Path: pages.home
class _TranslationsPagesHomeEs extends TranslationsPagesHomeEn {
  _TranslationsPagesHomeEs._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _TranslationsPagesQuestionEs extends TranslationsPagesQuestionEn {
  _TranslationsPagesQuestionEs._(TranslationsEs root) : this._root = root, super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Página de pregunta';
  @override
  String get ready => 'Soy listo';
}

// Path: pages.answer
class _TranslationsPagesAnswerEs extends TranslationsPagesAnswerEn {
  _TranslationsPagesAnswerEs._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _TranslationsPagesCorrectionEs extends TranslationsPagesCorrectionEn {
  _TranslationsPagesCorrectionEs._(TranslationsEs root) : this._root = root, super.internal(root);

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
