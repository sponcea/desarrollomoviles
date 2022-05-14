import 'package:ejercicio_semana7/rutas/rutas.dart';
import 'package:flutter/material.dart';

class VistaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menu = Rutas.menu;
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                title: Text(menu[index].nombre),
                leading: Icon(menu[index].icono),
                onTap: () {
                  Navigator.pushNamed(context, menu[index].ruta);
                }),
            separatorBuilder: (context, index) => Divider(),
            itemCount: menu.length));
  }
}
