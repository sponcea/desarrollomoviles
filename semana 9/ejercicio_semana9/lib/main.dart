import 'package:ejercicio_semana9/routes/routes.dart';
import 'package:ejercicio_semana9/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Para dar color a la barra de hora y bateria
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.rutaInicial,
        routes: Routes.getRutas(),
        theme: Tema.light);
  }
}
