import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:listado_pedidos/models/products_model.dart';

import 'package:listado_pedidos/app_setting.dart';

class Product extends StatelessWidget {
  final ProductModel _product;

  const Product(this._product, {super.key});

  @override
  Widget build(BuildContext context) {
    final Locale appLocale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(_product.name),
      ),
      body: Center(
        child: Column(
          children: [
            Text(_product.name),
            Text(_product.proveedor),
            Text(DateFormat.yMMMMd(appLocale.languageCode).format(_product.dischargeDate).toString()),
            Text(NumberFormat.currency(locale: internalizationSettings[appLocale.languageCode] ).format(_product.price)),
            Text('Descripcion: ${_product.description}')
          ],
        ),
      ),
    );
  }
}
