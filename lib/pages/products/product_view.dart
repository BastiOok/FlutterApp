import 'package:flutter/material.dart';
import 'package:listado_pedidos/models/products_model.dart';

class Product extends StatelessWidget {
  final ProductModel _product;

  const Product(this._product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_product.name),
      ),
      body: Center(
        child: Column(
          children: [
            Text(_product.name),
            Text(_product.proveedor),
            Text(_product.dischargeDate.toString()),
            Text(_product.price.toString())
          ],
        ),
      ),
    );
  }
}
