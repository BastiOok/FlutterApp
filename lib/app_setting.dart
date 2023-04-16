import 'dart:ui' as ui;

import 'package:intl/intl.dart';
import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:listado_pedidos/main.dart';
import 'package:listado_pedidos/widgets/my_number_symbols.dart';

final defaultLocale = ui.window.locale.languageCode;
final defaultLanguage = ui.window.locale.countryCode;
String get defaultDeviceLanguage {
  String defLocale = defaultLocale;
  if (defaultLanguage != null) {
    defLocale += '_$defaultLanguage';
  }
  return defLocale;
}

Map<String, String> get internalizationSettings {
   String? currentLanguage = MyAppState().locale.languageCode ;
  // print("lang:"+currentLanguage);
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
      numberFormatSymbols['ca'] =
          (numberFormatSymbols['ca'] as NumberSymbols)
              .copyWith(currencySymbol: '€');
      return internCA;
    default:
      return internES;
  }
}

Map<String, String> get internES => {
      'locale': 'es_ES',
      'currency_symbol': '€',
    };

Map<String, String> get internUSA => {
      'locale': 'en_US',
      'currency_symbol': '\$',
    };
Map<String, String> get internCA => {
      'locale': 'ca_ES',
      'currency_symbol': '€',
    };
