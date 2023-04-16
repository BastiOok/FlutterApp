import 'package:listado_pedidos/global.dart';
import 'package:listado_pedidos/router/router.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:listado_pedidos/app_setting.dart';

void main() {
  Intl.defaultLocale = defaultDeviceLanguage;
  // initializeDateFormatting('es_ES', null);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  
  Locale get locale => globalLocale;

  final _supportedLocales = const [
    Locale('es'),
    Locale('en'),
    Locale('ca'),
    Locale('es_ES'),
    Locale('en_US'),
    Locale('ca_ES'),
  ];

  @override
  void initState() {
    super.initState();

    globalLocale = Locale(defaultLocale, defaultLanguage);
  }

  void changeLanguage(Locale locale) {
      globalLocale = locale;
      print(globalLocale);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: _supportedLocales,
      locale: globalLocale,
      routes: Routes
          .getRoutes, //Le asignamos el router personalizado que hemos creado
      initialRoute:
          Routes.splash, //Asignamos la pagina de splash como la principal.
    );
  }
}
