import 'package:flutter/material.dart';
import 'package:listado_pedidos/widgets/laguage_selector.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'login_form_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<Login> {

  @override
  Widget build(BuildContext context) {
    final texts = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        automaticallyImplyLeading: false,
        actions: languageSelector(context),
      ),
      body: Center(
          child: SingleChildScrollView(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(//Cojemos una imagen del logo de flutter de internet.
              "https://docs.flutter.dev/assets/images/flutter-logo-sharing.png"),
          const CustomLoginForm(),
          Align(
            //Botton para crear un nuevo usuario.
            alignment: Alignment.bottomCenter,
            child: MaterialButton(
              onPressed: () => {},
              child: Text(texts.newUserCreateAcount),
            ),
          )
        ],
      ))),
    );
  }
}
