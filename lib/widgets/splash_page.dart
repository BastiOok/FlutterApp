
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../router/router.dart';
//Esta pagina solo se mostrara al iniciar la aplicación, solo se mostrara por 5 segundos.
class SplashPage extends StatefulWidget{
  const SplashPage({super.key});

  @override
  SplashPageState createState(){
    return SplashPageState();
  }

}

class SplashPageState extends State<SplashPage>{//La pagina de splash la haremos Stateful para poder poner un state.

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) => //Usando Future asignamos un delay de 5 segundos que al completarse nos mande a la pagina de login.
      Navigator.pushReplacementNamed(context, Routes.login)//Con el pushReplacementNamed accedemos a la siguiente ruta descartando en la que esta actualmente.
    );
  }

  @override
  Widget build(BuildContext context) {

    final texts = AppLocalizations.of(context);

    return Scaffold(
      appBar: null,
      body:Center(
        child: Column(
          children: [
            Image.network("https://www.alisco-it.com/wp-content/uploads/2022/01/Flutter_Featured_Logo.png"),
            
            Text(texts.slogan),
            const CircularProgressIndicator(),//Este widget es para mostrar un círculo de carga
          ],
        )
      )
    );
  }
}