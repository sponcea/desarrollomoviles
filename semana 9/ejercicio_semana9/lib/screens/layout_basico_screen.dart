import 'package:flutter/material.dart';

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
            _Cuerpo()
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

class _Cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [_Titulo(), _Botones(), _Parrafo()]),
    );
  }
}

class _Parrafo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Consequat aliquip velit in irure in officia est aliquip eiusmod laborum. Mollit duis do id commodo. Ea amet eiusmod ex mollit in esse enim nulla occaecat sint magna id in.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class _Botones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _Boton(icono: Icons.map, label: 'MAPA'),
          _Boton(icono: Icons.share, label: 'COMPARTIR'),
          _Boton(icono: Icons.check, label: 'LIKE'),
        ],
      ),
    );
  }
}

class _Boton extends StatelessWidget {
  final IconData icono;
  final String label;

  const _Boton({
    Key? key,
    required this.icono,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icono), Text(label)],
    );
  }
}

class _Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          //Elemento 1
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Atardecer en la laguna azul',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Tarapoto - Peru')
              ],
            ),
          ),
          //Elemento 2
          Icon(Icons.comment),
          //Elemento 3
          Text('100')
        ],
      ),
    );
  }
}
