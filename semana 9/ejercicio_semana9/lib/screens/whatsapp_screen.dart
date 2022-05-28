import 'package:flutter/material.dart';

class WhatsappScreen extends StatelessWidget {
  const WhatsappScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout whatsapp!!!')),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        //color: Colors.blue,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
              Divider(),
              _Chat(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Chat extends StatelessWidget {
  const _Chat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [_Izquierda(), Expanded(child: _Medio()), _Derecha()],
      ),
    );
  }
}

class _Izquierda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Icon(
        Icons.people,
        //color: Colors.white,
      ),
      backgroundColor: Colors.grey,
    );
  }
}

class _Medio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      margin: EdgeInsets.only(left: 10),
      child: Column(
        //Cuando es una columna permite alinear con respecto al eje horizontal
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sergio Ponce',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Text(
            'No te olvides de entregar el trabajo',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}

class _Derecha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('8:18', style: TextStyle(color: Colors.green)),
        CircleAvatar(
            radius: 10,
            backgroundColor: Colors.green,
            child: Text(
              '8',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ))
      ],
    );
  }
}
