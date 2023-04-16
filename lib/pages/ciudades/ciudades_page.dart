
import 'package:flutter/material.dart';
import '../../router/router.dart';
import '../../models/ciudades_model.dart';
import 'package:listado_pedidos/global.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Ciudades extends StatelessWidget {
  
  const Ciudades({super.key});

  @override
  Widget build(BuildContext context) {
    final Locale appLocale = Localizations.localeOf(context);
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Cities list'),
        //   automaticallyImplyLeading: false,
        // ),
        body: ListView(//Mapeamos las ciudades para asi crear un listado el cual contiene varios StatelessWidget de Ciudaddes.
          children: ciudadesMap[appLocale.languageCode]!.map((c) => Ciudad(c)).toList(),
        ),
      );
  }
}


//Widget que contendrá una breve información de la ciudad la cual podemos ampliar onTAp.
class Ciudad extends StatelessWidget {
  final CiudadesModel _ciudad;

  const Ciudad(this._ciudad, {super.key});

  @override
  Widget build(BuildContext context) {
    final texts = AppLocalizations.of(context);
    return InkWell(//Con el InkWell y el onTap podemos decir que cuando pulsa una ciudad me cree una ventana en la que se muestra la informacion de la ciudad.
      onTap: () {
        Navigator.pushNamed(context, Routes.ciudad, arguments: _ciudad);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Hero(//Relacionamos el Hero usando el valor en tag.
              tag: "avatar_${_ciudad.id}",
              child: Image.network(_ciudad.foto, width: 140),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(//Column que contenddra breve informacion sobre la ciudad
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _ciudad.nombre,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    _ciudad.pais,
                    style: const TextStyle(
                      color: Colors.grey
                    ),
                  ),
                  Text(
                    '${texts.populationMessage}: ${_ciudad.population}',
                    style: const TextStyle(
                      color: Colors.grey
                    ),  
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
