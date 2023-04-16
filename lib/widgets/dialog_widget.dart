
import 'package:flutter/material.dart';
import 'package:listado_pedidos/global.dart';
import 'package:listado_pedidos/models/ciudades_model.dart';
import '../router/router.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Dialogos extends StatelessWidget{//Este widget se le pasa una ciudad por parametro y se le da la opcion al usuario de borrar la ciudad del listado
  final CiudadesModel _removeId;
  const Dialogos(this._removeId, {super.key});
  @override
  Widget build(BuildContext context){
    final texts = AppLocalizations.of(context);
    return TextButton(
      onPressed: ()=> showDialog(
        context: context, 
        builder: (BuildContext context) => AlertDialog(
          title: const Text('ALERTA'),
          content: const Text('Seguro que quieres borrar ?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop<String>("No"),//Si le da que no vuelve para atrás quitando el mensaje.
              child: const Text('Cancelar'), 
              ),
              TextButton(
                onPressed: () {
                  ciudadesMap['es']?.remove(_removeId);//Si se le da a borrar, eliminara la ciudad de la lista y viaja a la pagina con el listado de ciudades donde ya no aparecra la eliminada.
                  ciudadesMap['en']?.remove(_removeId);
                  ciudadesMap['ca']?.remove(_removeId);
                  Navigator.pushReplacementNamed(context, Routes.chooseList);
                },
                child: Text(texts.acceptMessage)
              )
          ],
        )
      ),
      child: Text(texts.removeMessage)
    ); 
  }
}