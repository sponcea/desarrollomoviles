import 'package:flutter/material.dart';
import 'package:hola_mundo_app/vistas/Vista_home.dart';
import 'package:hola_mundo_app/vistas/vista_home_statefull.dart';

void main() {
  runApp(MiWidget());
}

class MiWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primer programa en Flutter',
      debugShowCheckedModeBanner: false,
      home: VistaHomeStatefull(),
    );
  }
}
