import 'package:ejercicio_semana9/models/item_menu_home.dart';
import 'package:ejercicio_semana9/screens/first_screen.dart';
import 'package:ejercicio_semana9/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const rutaInicial = 'home';
  static final menuItem = <MenuItem>[
    /*MenuItem(
        ruta: 'home',
        icono: Icons.home,
        nombre: 'Home',
        screen: HomeScreenDinamico()),*/
    MenuItem(
        ruta: 'screen1',
        icono: Icons.check,
        nombre: 'screen1',
        screen: FirstScreen()),
  ];

  /*Uso el menuItem para crear las rutas */
  static Map<String, Widget Function(BuildContext)> getRutas() {
    Map<String, Widget Function(BuildContext)> rutas = {};
    /*Debo retornar una función que construya el Widget */
    /**solo para el home, para que no salga en el main */
    rutas.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final item in menuItem) {
      rutas.addAll({item.ruta: (BuildContext context) => item.screen});
    }
    return rutas;
  }
}
