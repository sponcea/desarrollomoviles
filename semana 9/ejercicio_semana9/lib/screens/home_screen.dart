import 'package:ejercicio_semana9/routes/routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuItem = Routes.menuItem;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home!!!'),
          centerTitle: true,
          //backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  /*title: Text(categoriaCaballero[index]),*/
                  /*leading: const Icon(Icons.check),*/
                  title: Text(menuItem[index].nombre),
                  leading: Icon(menuItem[index].icono),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                  onTap: () {
                    Navigator.pushNamed(context, menuItem[index].ruta,
                        arguments: menuItem[index]);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            /*itemCount: categoriaCaballero.length*/
            itemCount: menuItem.length));
  }
}
