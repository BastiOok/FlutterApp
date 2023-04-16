import 'dart:async';

import 'package:intl/intl.dart';
import 'package:listado_pedidos/global.dart';
import 'package:flutter/material.dart';
import 'package:listado_pedidos/models/products_model.dart';
import 'package:listado_pedidos/router/router.dart';

import 'package:listado_pedidos/app_setting.dart';


class ProductsList extends StatelessWidget {

  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    final Locale appLocale = Localizations.localeOf(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Products list'),
      //   automaticallyImplyLeading: false,
      //   actions: languageSelector(context),
      // ),
      body: ListView(
        //Mapeamos las ciudades para asi crear un listado el cual contiene varios StatelessWidget de Ciudaddes.
        children: productsMap[appLocale.languageCode]!.map((product) => ProductView(product)).toList(),
      ),
    );
  }
}

class ProductView extends StatelessWidget {
  final ProductModel _producto;
  const ProductView(this._producto, {super.key});

  @override
  Widget build(BuildContext context) {
    final Locale appLocale = Localizations.localeOf(context);
    return InkWell(
      onTap: () => Navigator.pushNamed(context, Routes.product, arguments:_producto),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _producto.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      _producto.proveedor,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      DateFormat.yMMMMd(appLocale.languageCode).format(_producto.dischargeDate),
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      NumberFormat.currency(locale: internalizationSettings[appLocale.languageCode] ).format(_producto.price),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ))
        ],
      ),
    );
  }
}
