import 'package:ejercicio_de_la_semana6/rutas/rutas.dart';
import 'package:ejercicio_de_la_semana6/vistas/vista_fade.dart';
import 'package:ejercicio_de_la_semana6/vistas/vista_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Rutas.rutaInicial,
        routes: Rutas.getRutas());
  }
}
