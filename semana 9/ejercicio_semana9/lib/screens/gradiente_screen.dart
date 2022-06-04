import 'dart:ui';

import 'package:flutter/material.dart';

class GradienteScreen extends StatelessWidget {
  const GradienteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [_Background(), _Body()],
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
    return Column(
      children: [_TableTitle(), _CustomTable()],
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
          _CustomCard(),
          _CustomCard(),
        ]),
        TableRow(children: [
          _CustomCard(),
          _CustomCard(),
        ])
      ],
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      height: 180,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(50, 50, 50, 0.5)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
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
                  'Aries',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )
              ]),
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

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 0.78,
                  stops: [0.1, 0.65],
                  colors: [Color(0xffBA1725), Color(0xff150103)])),
        ),
        Center(
          child: Container(
            child: Image(image: AssetImage('assets/aldebaran.jpeg')),
          ),
        )
      ],
    );
  }
}
