import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:visualize_chess/i18n/strings.g.dart';
import 'package:visualize_chess/pages/home_page.dart';
import 'package:visualize_chess/providers/dark_theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleSettings.useDeviceLocale();
  runApp(ProviderScope(child: TranslationProvider(child: const MyApp())));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inDarkMode = ref.watch(darkThemeProvider);
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      title: 'Visualize chess',
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(scheme: FlexScheme.greenM3),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.blueWhale),
      themeMode: inDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: const HomePage(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.trackpad,
  };
}
