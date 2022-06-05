import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ejercicio_semana9/Widgets/background_gradiente.dart';

class GradienteScreen extends StatelessWidget {
  const GradienteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Background(), _Body()],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [_TableTitle(), _CustomTable()],
      ),
    );
  }
}

class _CustomTable extends StatelessWidget {
  const _CustomTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detallegradiente'),
            child: Hero(
              tag: 'aries',
              child: _CustomCard(
                signo: 'Aries',
              ),
            ),
          ),
          _CustomCard(signo: 'Tauro'),
        ]),
        TableRow(children: [
          _CustomCard(signo: 'Geminis'),
          _CustomCard(signo: 'Cancer'),
        ]),
        TableRow(children: [
          _CustomCard(signo: 'Leo'),
          _CustomCard(signo: 'Virgo'),
        ]),
        TableRow(children: [
          _CustomCard(signo: 'Libra'),
          _CustomCard(signo: 'Escorpio'),
        ]),
        TableRow(children: [
          _CustomCard(signo: 'Sagitario'),
          _CustomCard(signo: 'Capricornio'),
        ])
      ],
    );
  }
}

class _CustomCard extends StatelessWidget {
  final String signo;
  const _CustomCard({
    Key? key,
    required this.signo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      height: 180,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(50, 50, 50, 0.5)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(
                  Icons.sunny,
                  size: 40,
                  color: Colors.white,
                ),
                radius: 40,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                signo,
                style: TextStyle(fontSize: 25, color: Colors.white),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class _TableTitle extends StatelessWidget {
  const _TableTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 30),
        Text(
          'Los caballeros del zodiaco',
          style: textStyle,
        ),
        Text('Conoce mas sobre tus caballeros',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white))
      ]),
    );
  }
}
