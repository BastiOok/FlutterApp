import 'package:flutter/material.dart';
import 'package:listado_pedidos/main.dart';
//Menu Dropdown que permite cambiar el idioma de la app.
List<Widget> languageSelector(BuildContext context) {
  final appState = context.findAncestorStateOfType<MyAppState>();
  return [
    DropdownButton(
      items: const [
        DropdownMenuItem(//Se puede cambiar al Ingles.
          value:Locale('en', 'US'),
          child: Text("English"),
        ),
        DropdownMenuItem(//Se puede cambiar al Español.
          value:Locale('es', 'ES'),
          child: Text("Español"),
        ),
        DropdownMenuItem(//Se puede cambiar al Catalan.
          value:Locale('ca', 'ES'),
          child: Text("Catala"),
        )
      ], 
      //Cuando se seleccione un nuevo idioma, llamara a la funcion del 
      //MyAppState que cambia el idioma de la variable global a la selecionada
      //y llamara al setState del main cambiando el idioma del contenido de la app.
      onChanged: (locale) {
        if(locale != null){
          appState?.changeLanguage(locale);
        }
      }
    )
  ];
}
