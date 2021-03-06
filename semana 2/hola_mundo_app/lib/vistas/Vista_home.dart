import 'package:flutter/material.dart';

class VistaHome extends StatelessWidget {
  @override
  //final double fuenteTitulo1 = 25;
  final double fuenteTitulo2 = 20;

  TextStyle fuenteTitulo = const TextStyle(fontSize: 30);

  Widget build(BuildContext context) {
    int clics = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Mi primer programa en Flutter'),
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
          clics++;
          print('hice clic: $clics veces');
        },
        child: Icon(Icons.check_rounded),
      ),
    );
  }
}
