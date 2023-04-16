import 'package:flutter/material.dart';

import 'package:listado_pedidos/global.dart';
import 'package:listado_pedidos/router/router.dart';

import 'package:intl/intl.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:listado_pedidos/app_setting.dart';

void main() {
  //Funcion que comenzara la aplicación.
  Intl.defaultLocale =
      defaultDeviceLanguage; //Lenguaje por defecto en el que se iniciara la app.
  runApp(const MyApp()); //Comenzamos la app
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  //Widget que devuelve un state de MyAppState que sera nuestra applicaccion.
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  //Definimos una funcion para poder coger el lenguaje al que esta definido nuestra applicacion.
  Locale get locale => globalLocale;
  //Lista le lenguas permitidas por la app
  final _supportedLocales = const [
    Locale('es'),
    Locale('en'),
    Locale('ca'),
    Locale('es_ES'),
    Locale('en_US'),
    Locale('ca_ES'),
  ];
  //Inicializamos el estado del widget y almacenamos la ubicación en una variable global.
  @override
  void initState() {
    super.initState();
    globalLocale = Locale(defaultLocale, defaultLanguage);
  }
  //Con esta funcion llamar al state despues de cambiar el idioma para que la app se actualize a la seleccionada.
  void changeLanguage(Locale locale) {
    globalLocale = locale;
    print(globalLocale);
    setState(() {});
  }
  //Widget que almacena nuestra app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //Lista de delegados de localización que se utilizan para manejar la internacionalización y la localización en la aplicación
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: _supportedLocales,//Lista de lenguas permitidas.
      locale: globalLocale,
      routes: Routes
          .getRoutes, //Le asignamos el router personalizado que hemos creado
      initialRoute:
          Routes.splash, //Asignamos la pagina de splash como la principal.
    );
  }
}
