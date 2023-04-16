import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter/material.dart';
import 'package:listado_pedidos/pages/ciudades/ciudades_page.dart';
import 'package:listado_pedidos/pages/products/products_list.dart';
import 'package:listado_pedidos/widgets/laguage_selector.dart';

class ChooseList extends StatelessWidget{
  const ChooseList({super.key});

  @override
  Widget build(BuildContext context) {
    final texts = AppLocalizations.of(context);
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text(texts.listsTitle),
          automaticallyImplyLeading: false,
          actions: languageSelector(context),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.add_road_rounded),
              ),
              Tab(
                child: Icon(Icons.abc_sharp),
              )
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            Ciudades(),
            ProductsList(),
          ],
        ),
      )
    );
  }


  
}