import 'package:ejercicio_semana5/vistas/home.dart';
import 'package:ejercicio_semana5/vistas/lista1_container.dart';
import 'package:ejercicio_semana5/vistas/lista1_listtile.dart';
import 'package:ejercicio_semana5/vistas/lista_bronce.dart';
import 'package:flutter/material.dart';

/**TODO:
 * Mejorar vista del home ()
 * Crear rutas en el main (initial routes, lista de rutas)
 * Crear list de caballeros de plata (leyendo de un mapa con separated)
 * Crear lista de caballeros de oro (leyendo de un mapa con separated)
 * Crear Card 
 * Crear Alert
 */
void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
