import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Card!!!')),
      body: _Card(),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        //El stack hara que se acomode dentro de todo el padre
        child: Stack(
          children: [
            //Elemento 1
            _BackgroundImage(),
            //Elemento 2
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
            width: 180,
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
      //height: 250,
      decoration: BoxDecoration(
          //image es el background del contenedor
          //depente del fit para quenga una forma
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.luminosity),
              image: AssetImage('assets/atardecer.jpeg'))),
    );
  }
}
