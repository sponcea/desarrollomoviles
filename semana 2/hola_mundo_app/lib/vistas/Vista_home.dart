import 'package:flutter/material.dart';

class VistaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Mi primer programa en Flutter'),
      ),
      body: const Center(
          child: Text(
        'Hola Mundo!!!',
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
