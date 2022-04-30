import 'dart:convert';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  /*Creamos una lista con los tipos de caballeros*/
  /*Lo vamos a transformar a mapa y luego a lista, pero como el children recibe un elemento a la vez
  debemos sacar los elementos 1 por 1, para ello utilizamos el operador spread (...)*/
  final caballero = ['Bronce', 'Plata', 'Oro'];

  /*Trabajamos con un json que debemos decodificar */
  final jsonString = '{"url":"Facebook ","visitas":"200000"}';

  @override
  Widget build(BuildContext context) {
    Map jsonDecodificado = json.decode(jsonString);
    return Scaffold(
      appBar: AppBar(
        title: Text('Los caballeros del zodiaco'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: ListView(children: [
        ...caballero
            .map((tipoCaballero) => ListTile(title: Text(tipoCaballero)))
            .toList(),
        ListTile(
          title: Text(jsonDecodificado['url']),
          subtitle: Text(jsonDecodificado['visitas']),
        )
      ]),
    );
  }
}
