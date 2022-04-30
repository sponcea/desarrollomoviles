import 'package:ejercicio_semana5/vistas/home.dart';
import 'package:ejercicio_semana5/vistas/lista1_container.dart';
import 'package:ejercicio_semana5/vistas/lista1_listtile.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
