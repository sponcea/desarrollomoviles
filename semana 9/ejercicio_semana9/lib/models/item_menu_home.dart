import 'package:flutter/material.dart';

/*  el modelo nos servirá para crear items del menú de una forma ordenada
    en el ListTile podemos ver los tipos de dato que vamos a necesitar */
class MenuItem {
  final String ruta;
  final IconData icono;
  final String nombre;
  final Widget screen;

  MenuItem(
      {required this.ruta,
      required this.icono,
      required this.nombre,
      required this.screen});
}
