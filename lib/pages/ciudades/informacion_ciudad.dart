
import 'package:flutter/material.dart';
import '../../widgets/dialog_widget.dart';
import '../../models/ciudades_model.dart';

//Widget que muestra más información sobre la ciudad.
class InfoCiudad extends StatelessWidget {
  final CiudadesModel _ciudad;

  const InfoCiudad(this._ciudad, {super.key});//Le pasaremos por parámetro una ciudad

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_ciudad.nombre),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              child: Hero(//Relacionamos el Hero usando el valor en tag.
                tag: "avatar_${_ciudad.id}",
                child: Image.network(_ciudad.foto)
              ),
            ),
            Padding(//Contenedor de la informacion de la ciudad
              padding: const EdgeInsets.all(20),
              child: Text(
                _ciudad.description,
                textAlign: TextAlign.center,
              ),
            ),
            Dialogos(_ciudad),
          ],
        ),
      ),
    );
  }
}