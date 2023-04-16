import 'dart:ui' as ui;

import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:listado_pedidos/main.dart';
import 'package:listado_pedidos/widgets/my_number_symbols.dart';

//Con el ui import podemos coger el lenguaje del dispositivo del usuario.
final defaultLocale = ui.window.locale.languageCode;
final defaultLanguage = ui.window.locale.countryCode;
//Con este get podemos devolver el idioma predeterminado del dispositivo.
String get defaultDeviceLanguage {
  String defLocale = defaultLocale;
  if (defaultLanguage != null) {
    defLocale += '_$defaultLanguage';
  }
  return defLocale;
}

//Mapa que devuelve un NumberSymbol dependiendo del idioma en el que este la app.
Map<String, String> get internalizationSettings {
  //Cojemos el lenguaje en el que esta la app de la variable global que lo almacena.
  String? currentLanguage = MyAppState().locale.languageCode;
  switch (currentLanguage) {
    case 'es':
      numberFormatSymbols['es_ES'] =
          (numberFormatSymbols['es_ES'] as NumberSymbols)
              .copyWith(currencySymbol: '€');
      return internES;
    case 'en':
      numberFormatSymbols['en_US'] =
          (numberFormatSymbols['en_US'] as NumberSymbols)
              .copyWith(currencySymbol: r'$');
      return internUSA;
    case 'ca':
      numberFormatSymbols['ca'] = (numberFormatSymbols['ca'] as NumberSymbols)
          .copyWith(currencySymbol: '€');
      return internCA;
    default:
      return internES;
  }
}

//Internalizacion para el español.
Map<String, String> get internES => {
      'locale': 'es_ES',
      'currency_symbol': '€',
    };
//Internalizacion para el ingles.
Map<String, String> get internUSA => {
      'locale': 'en_US',
      'currency_symbol': '\$',
    };
//Internalizacion para el catalan.
Map<String, String> get internCA => {
      'locale': 'ca_ES',
      'currency_symbol': '€',
    };
