import 'package:ejercicio_de_la_semana6/modelos/item_menu.dart';
import 'package:ejercicio_de_la_semana6/vistas/vista_circle_avatar.dart';
import 'package:ejercicio_de_la_semana6/vistas/vista_fade.dart';
import 'package:ejercicio_de_la_semana6/vistas/vista_form.dart';
import 'package:ejercicio_de_la_semana6/vistas/vista_home.dart';
import 'package:flutter/material.dart';

class Rutas {
  static const String rutaInicial = 'home';
  static final menu = <ItemMenu>[
    ItemMenu(
        nombre: 'Home', ruta: 'home', icono: Icons.home, vista: VistaHome()),
    ItemMenu(
        nombre: 'Fade In Image',
        ruta: 'fadein',
        icono: Icons.image,
        vista: VistaFadeIn()),
    ItemMenu(
        nombre: 'Circle Avatar',
        ruta: 'circle',
        icono: Icons.people,
        vista: VistaCircleAvatar()),
    ItemMenu(
        nombre: 'Form',
        ruta: 'form',
        icono: Icons.text_fields,
        vista: VistaForm())
  ];

  static Map<String, Widget Function(BuildContext)> getRutas() {
    Map<String, Widget Function(BuildContext)> rutas = {};
    for (var item in menu) {
      rutas.addAll({item.ruta: (context) => item.vista});
    }

    return rutas;
  }

  static Map<String, Widget Function(BuildContext)> rutas = {
    'home': (context) => VistaHome(),
    'fadein': (context) => VistaFadeIn()
  };
}
