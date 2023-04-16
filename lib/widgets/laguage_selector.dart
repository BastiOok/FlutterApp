import 'package:flutter/material.dart';
import 'package:listado_pedidos/main.dart';

List<Widget> languageSelector(BuildContext context) {
  final appState = context.findAncestorStateOfType<MyAppState>();
  return [
    DropdownButton(
      items: const [
        DropdownMenuItem(
          value:Locale('en', 'US'),
          child: Text("English"),
        ),
        DropdownMenuItem(
          value:Locale('es', 'ES'),
          child: Text("Español"),
        ),
        DropdownMenuItem(
          value:Locale('ca', 'ES'),
          child: Text("Catala"),
        )
      ], 
      onChanged: (locale) {
        if(locale != null){
          appState?.changeLanguage(locale);
        }
      }
    )
  ];
}
