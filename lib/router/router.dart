
import 'package:listado_pedidos/models/products_model.dart';
import 'package:listado_pedidos/pages/choose_list.dart';
import 'package:listado_pedidos/models/ciudades_model.dart';
import 'package:listado_pedidos/pages/ciudades/ciudades_page.dart';
import 'package:listado_pedidos/pages/login/login_page.dart';
import 'package:listado_pedidos/pages/products/product_view.dart';
import 'package:listado_pedidos/pages/products/products_list.dart';
import 'package:listado_pedidos/widgets/splash_page.dart';
import 'package:flutter/material.dart';

import '../pages/ciudades/informacion_ciudad.dart';

//Esta clase maneja las rutas de la aplicación.

class Routes{
  Routes._();
  
  static late String username = "";
  //Aque definimos las rutas que tiene nuestra aplicacion de forma estatcia para poder accededr a ellas facilmente.
  static const String login = "/login";
  // static const String ciudades = "/ciudades";
  static const String ciudad = "/ciudad";
  // static const String products = "/products";
  static const String product = "/product";
  static const String chooseList = "/lists";
  static const String splash = "/";

  static Map <String, Widget Function(BuildContext)> get getRoutes{
    return {
      Routes.login: (context) => const Login(),//Página para el login.
      Routes.splash: (context) => const SplashPage(),//Página principal.
      Routes.chooseList: (context) => const ChooseList(),
      // Routes.ciudades: (context) {
      //   //username = ModalRoute.of(context)!.settings.arguments as String;//Página el la que se mostrará el listado de ciudades
      //   return const Ciudades();
      // },
      // Routes.products: (context) => const ProductsList(),
      Routes.product:(context) {
        final ProductModel product = ModalRoute.of(context)!.settings.arguments as ProductModel;
        return Product(product);
      },
      Routes.ciudad: (context) {//Página en la que se mostrará información en detalle de una ciudad.
        final CiudadesModel ciudad = ModalRoute.of(context)!.settings.arguments as CiudadesModel;
        return InfoCiudad(ciudad);
      }
    };
  }
}

