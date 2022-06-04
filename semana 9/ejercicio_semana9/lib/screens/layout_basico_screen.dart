import 'package:flutter/material.dart';
import 'package:ejercicio_semana9/Widgets/body_basico.dart';

class LayoutBasicoScreen extends StatelessWidget {
  const LayoutBasicoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Layout basico')),
        body: Column(
          children: [
            _Imagen(),
            SizedBox(
              height: 30,
            ),
            Cuerpo()
          ],
        ));
  }
}

class _Imagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //La imagen no es background del contenedor
    //Si el contenedor no tiene un tamano, toma la forma de la imagen,
    //Si el contenedor tiene forma, la imagen, puede acomodarse usando la propiedad fit

    return Container(child: Image(image: AssetImage('assets/atardecer.jpeg')));
  }
}
