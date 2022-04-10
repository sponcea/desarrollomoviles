import 'package:flutter/material.dart';

class VistaHomeStatefull extends StatefulWidget {
  @override
  State<VistaHomeStatefull> createState() => _VistaHomeStatefullState();
}

class _VistaHomeStatefullState extends State<VistaHomeStatefull> {
  @override
  int clics = 0;
  //final double fuenteTitulo1 = 25;
  final double fuenteTitulo2 = 20;

  TextStyle fuenteTitulo = const TextStyle(fontSize: 30);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Mi primer programa con Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bienvenido a la clase 2',
              style: fuenteTitulo,
            ),
            Text('Hiciste $clics clics',
                style: TextStyle(fontSize: fuenteTitulo2)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clics++;
            print('hice clic: $clics veces');
            print(
                'ha ocurrido un cambio en el estado de la propiedad/atributo clic, avisar al renderizador');
          });
        },
        child: Icon(Icons.check_rounded),
      ),
    );
  }
}
