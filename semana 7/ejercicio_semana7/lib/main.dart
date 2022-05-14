import 'package:ejercicio_semana7/rutas/rutas.dart';
import 'package:ejercicio_semana7/vistas/vista_fade.dart';
import 'package:ejercicio_semana7/vistas/vista_home.dart';
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
