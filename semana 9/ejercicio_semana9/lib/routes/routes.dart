import 'package:ejercicio_semana9/models/item_menu_home.dart';
import 'package:ejercicio_semana9/screens/card_screen.dart';
import 'package:ejercicio_semana9/screens/detalle_gradiente.dart';
import 'package:ejercicio_semana9/screens/gradiente_screen.dart';
import 'package:ejercicio_semana9/screens/layout_basico_screen.dart';
import 'package:ejercicio_semana9/screens/pageview_screen.dart';
import 'package:ejercicio_semana9/screens/sliver_screen.dart';
import 'package:ejercicio_semana9/screens/swiper_carrusel_screen.dart';
import 'package:ejercicio_semana9/screens/whatsapp_screen.dart';
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
        ruta: 'whatsapp',
        icono: Icons.check,
        nombre: 'Whatsapp Screen',
        screen: WhatsappScreen()),
    MenuItem(
        ruta: 'card',
        icono: Icons.check,
        nombre: 'Card Screen',
        screen: CardScreen()),
    MenuItem(
        ruta: 'layoutbasico',
        icono: Icons.check,
        nombre: 'Layout basico',
        screen: LayoutBasicoScreen()),
    MenuItem(
        ruta: 'sliver',
        icono: Icons.check,
        nombre: 'Sliver Screen',
        screen: SliverScreen()),
    MenuItem(
        ruta: 'pageview',
        icono: Icons.check,
        nombre: 'PageView Screen',
        screen: PageViewScreen()),
    MenuItem(
        ruta: 'gradiente',
        icono: Icons.check,
        nombre: 'Gradiente Screen',
        screen: GradienteScreen()),
    MenuItem(
        ruta: 'swipercarrusel',
        icono: Icons.check,
        nombre: 'Swiper y Carrusel Screen',
        screen: SwiperCarruselScreen()),
  ];

  /*Uso el menuItem para crear las rutas */
  static Map<String, Widget Function(BuildContext)> getRutas() {
    Map<String, Widget Function(BuildContext)> rutas = {};
    /*Debo retornar una función que construya el Widget */
    /**solo para el home, para que no salga en el main */
    rutas.addAll({'home': (BuildContext context) => HomeScreen()});
    rutas.addAll({
      'detallegradiente': (BuildContext context) => DetalleGradienteScreen()
    });

    for (final item in menuItem) {
      rutas.addAll({item.ruta: (BuildContext context) => item.screen});
    }
    return rutas;
  }
}
