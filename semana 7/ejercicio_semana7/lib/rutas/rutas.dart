import 'package:ejercicio_semana7/modelos/item_menu.dart';
import 'package:ejercicio_semana7/vistas/vista_circle_avatar.dart';
import 'package:ejercicio_semana7/vistas/vista_date.dart';
import 'package:ejercicio_semana7/vistas/vista_fade.dart';
import 'package:ejercicio_semana7/vistas/vista_form.dart';
import 'package:ejercicio_semana7/vistas/vista_home.dart';
import 'package:ejercicio_semana7/vistas/vista_infinitescroll.dart';
import 'package:ejercicio_semana7/vistas/vista_slider.dart';
import 'package:flutter/material.dart';

class Rutas {
  static const String rutaInicial = 'home';
  static final menu = <ItemMenu>[
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
        vista: VistaForm()),
    ItemMenu(
        nombre: 'Date picker',
        ruta: 'date',
        icono: Icons.date_range,
        vista: VistaDate()),
    ItemMenu(
        nombre: 'Slider',
        ruta: 'slider',
        icono: Icons.arrow_circle_right_outlined,
        vista: VistaSlider()),
    ItemMenu(
        nombre: 'Infinite scroll',
        ruta: 'infinite',
        icono: Icons.image,
        vista: VistaInfiniteScroll())
  ];

  static Map<String, Widget Function(BuildContext)> getRutas() {
    Map<String, Widget Function(BuildContext)> rutas = {};
    rutas.addAll({'home': (BuildContext context) => VistaHome()});
    for (var item in menu) {
      rutas.addAll({item.ruta: (context) => item.vista});
    }

    return rutas;
  }
}
