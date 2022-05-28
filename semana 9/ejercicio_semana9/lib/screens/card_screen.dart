import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Card!!!')),
      body: Card(),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        child: Stack(
          children: [
            _BackgroundImage(),
            Align(alignment: Alignment.bottomLeft, child: _Body())
          ],
        ));
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(color: Colors.white);
    return Container(
      //color: Colors.green,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Atardecer en la laguna azul',
            style: textStyle,
          ),
          Text(
            'Autor',
            style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
          ),
          Container(
            height: 3,
            width: 150,
            color: Colors.green,
          ),
          Text(
            'TARAPOTO - PERU',
            style: textStyle,
          )
        ],
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.luminosity),
              image: AssetImage('assets/atardecer.jpeg'))),
    );
  }
}
