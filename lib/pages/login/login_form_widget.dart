
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../router/router.dart';

class CustomLoginForm extends StatefulWidget{

  const CustomLoginForm({super.key});

  @override
  CustomLoginFormState createState(){
    return CustomLoginFormState();
  }
}

class CustomLoginFormState extends State<CustomLoginForm>{
  TextEditingController us = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final texts = AppLocalizations.of(context);
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          createTextField(//Este método crea un text field, le tenemos que pasar un controllador y el placeholder.
                txtCont: us,
                text: texts.username,
          ),
          createTextField(//Tambien podemos decir que no muestre que es lo que se esta escriviendo.
              text: texts.passw,
              obscureText: true,
          ),
          MaterialButton(//Botón por si se ha olvidado la contraseña.
            onPressed: () => {},
            child: Text(
              texts.forgotPass,
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(//Botón de login, cuando se le se comprueba el contenido de los textformfields, si es igual al usuario que hemos puesto, pasara a la segunda pagina.
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {//Si las validaciones son correctas procede a abrir la pagina que contiene el listado de ciudades
                      _formKey.currentState!.save();
                      Routes.username = us.text;
                      Navigator.pushReplacementNamed(context, Routes.chooseList);
                    }
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ))),
                  child: const Text("Login")),
          ),
        ],
      ),
    );
  }
}

Padding createTextField(
    {
    required String text,
    obscureText = false, TextEditingController? txtCont}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
    
    child: TextFormField(
      controller:txtCont ,
      obscureText: obscureText,
       validator: (value) {//Hacemos todas las comprobaciones para validar lo que hay en cada campo
       return null;
        if(value == null || value.isEmpty){
          return "Empty field not permited";
        }
        switch(text.toUpperCase()){
          case "PASSWORD":
            if(value.length < 7){
              return "Password must be 7 characters long";
            }
            if(!(value.contains(RegExp(r'[0-9]'))) || !(value.contains(RegExp(r'[a-zA-Z]')))){
              return "Must have numbers and characters";
            }
            if(value != "pass12345"){
              return "Password incorrect";
            }
          break;
          case "USERNAME":
            if(value != "user"){
                return "Username incorrect";
              }
          break;
        }
        return null;
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: text,
      ),
    ),
  );
}
