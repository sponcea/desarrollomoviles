import 'dart:async';
import 'dart:convert';

import 'package:ejercicio_semana7/modelos/coleccion_caballero.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class VistaCaballeroFetch extends StatelessWidget {
  VistaCaballeroFetch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Future<ColeccionCaballero> caballero = fetchCaballeros();
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Caballero screen'),
      ),
      body: Center(
          child: FutureBuilder<ColeccionCaballero>(
        future: caballero,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
                itemBuilder: (context, index) => ListTile(
                      title: Text(
                          '${snapshot.data!.caballero[index].caballeroId} - ${snapshot.data!.caballero[index].nombre} de ${snapshot.data!.caballero[index].signo}'),
                      leading: Icon(Icons.sunny),
                      onTap: () {
                        Navigator.pushNamed(context, 'detallecaballero',
                            arguments: snapshot.data!.caballero[index]);
                      },
                    ),
                separatorBuilder: (context, index) => Divider(),
                itemCount: snapshot.data!.caballero.length);
          } else if (snapshot.hasError) {
            print('LLegó aca!!!');
            return Text("${snapshot.error}");
          }

          // Por defecto, muestra un loading spinner
          return CircularProgressIndicator();
        },
      )),
    );
  }

  Future<ColeccionCaballero> fetchCaballeros() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.61:8000/api/caballerosoro'));

    if (response.statusCode == 200) {
      // Si la llamada al servidor fue exitosa, analiza el JSON
      print("entro acá!!!");
      var coleccionCaballero =
          ColeccionCaballero.fromJson(json.decode(response.body));
      print('esto qué es??? ${coleccionCaballero}');
      return coleccionCaballero;
    } else {
      // Si la llamada no fue exitosa, lanza un error.
      throw Exception(':( falló');
    }
  }
}
