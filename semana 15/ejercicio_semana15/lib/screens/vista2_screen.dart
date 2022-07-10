import 'package:flutter/material.dart';

class VistaScreen extends StatelessWidget {
  const VistaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String mensaje = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('2do screen')),
      body: Center(
        child: Text(
          mensaje,
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
