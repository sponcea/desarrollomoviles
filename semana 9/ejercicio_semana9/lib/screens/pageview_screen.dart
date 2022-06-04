import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.black,
        ),
        PageView(
          scrollDirection: Axis.vertical,
          children: [
            _Pagina(
              nombre: 'Mu',
              imagen: 'assets/aries.jpeg',
            ),
            _Pagina(
              nombre: 'Aldebaran',
              imagen: 'assets/aldebaran.jpeg',
            ),
          ],
        ),
        _Regresar(),
      ],
    ));
  }
}

class _Regresar extends StatelessWidget {
  const _Regresar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      left: 15,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _Pagina extends StatelessWidget {
  final String nombre;
  final String imagen;
  const _Pagina({
    Key? key,
    required this.nombre,
    required this.imagen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(color: Colors.white, fontSize: 40);
    return Stack(
      children: [
        _Imagen(imagen: imagen),
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                nombre,
                style: textStyle,
              ),
              Text('Caballero dorado', style: textStyle),
              Expanded(child: Container()),
              Icon(
                Icons.arrow_drop_down,
                size: 100,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }
}

class _Imagen extends StatelessWidget {
  final String imagen;
  const _Imagen({
    Key? key,
    required this.imagen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 360,
      color: Colors.black,
      child: Center(
        child: Container(
          height: 360,
          //width: 250,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          clipBehavior: Clip.antiAlias,
          child: Image(
            image: AssetImage(imagen),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
