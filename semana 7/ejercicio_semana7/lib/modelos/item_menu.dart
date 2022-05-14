import 'package:flutter/material.dart';

class ItemMenu {
  final String nombre;
  final String ruta;
  final IconData icono;
  final Widget vista;

  ItemMenu(
      {required this.nombre,
      required this.ruta,
      required this.icono,
      required this.vista});
}
