import 'package:ejercicio_semana6/vistas/vista_circle_avatar.dart';
import 'package:ejercicio_semana6/vistas/vista_fade_in_image.dart';
import 'package:ejercicio_semana6/vistas/vista_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: VistaHome(),
      initialRoute: 'home',
      routes: {
        'home': (context) => VistaHome(),
        'fadinimage': (context) => VistaFadeInImage()
      },
    );
  }
}
