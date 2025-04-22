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
class TranslationsFr extends Translations {
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
           ),
       super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

  /// Metadata for the translations of <fr>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsFr _root = this; // ignore: unused_field

  @override
  TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsMiscFr misc = _TranslationsMiscFr._(_root);
  @override
  late final _TranslationsOptionsFr options = _TranslationsOptionsFr._(_root);
  @override
  late final _TranslationsWidgetsFr widgets = _TranslationsWidgetsFr._(_root);
  @override
  late final _TranslationsPagesFr pages = _TranslationsPagesFr._(_root);
}

// Path: misc
class _TranslationsMiscFr extends TranslationsMiscEn {
  _TranslationsMiscFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get ok => 'Ok';
  @override
  String get cancel => 'Annuler';
  @override
  String get submit => 'Envoyer';
}

// Path: options
class _TranslationsOptionsFr extends TranslationsOptionsEn {
  _TranslationsOptionsFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Options';
  @override
  late final _TranslationsOptionsDarkModeFr dark_mode = _TranslationsOptionsDarkModeFr._(_root);
}

// Path: widgets
class _TranslationsWidgetsFr extends TranslationsWidgetsEn {
  _TranslationsWidgetsFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsWidgetsGameParametersFr game_parameters = _TranslationsWidgetsGameParametersFr._(_root);
}

// Path: pages
class _TranslationsPagesFr extends TranslationsPagesEn {
  _TranslationsPagesFr._(TranslationsFr root) : this._root = root, super.internal(root);

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

// Path: options.dark_mode
class _TranslationsOptionsDarkModeFr extends TranslationsOptionsDarkModeEn {
  _TranslationsOptionsDarkModeFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Thème sombre';
}

// Path: widgets.game_parameters
class _TranslationsWidgetsGameParametersFr extends TranslationsWidgetsGameParametersEn {
  _TranslationsWidgetsGameParametersFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get position_generation_minimum_moves => 'Coups minimum depuis début: ';
  @override
  String get moves_to_play => 'Nombre de coups: ';
}

// Path: pages.home
class _TranslationsPagesHomeFr extends TranslationsPagesHomeEn {
  _TranslationsPagesHomeFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsPagesQuestionFr extends TranslationsPagesQuestionEn {
  _TranslationsPagesQuestionFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Page question';
  @override
  String get ready => 'Je suis prêt';
}

// Path: pages.answer
class _TranslationsPagesAnswerFr extends TranslationsPagesAnswerEn {
  _TranslationsPagesAnswerFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsPagesCorrectionFr extends TranslationsPagesCorrectionEn {
  _TranslationsPagesCorrectionFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
