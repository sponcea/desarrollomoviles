import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _originalTextColorBody = Colors.black;
  Color _originalBackgroundColorBody = Colors.white;

  Color _darkModeTextColorBody = Colors.white;
  Color _darkModeBackgroundColorBody = Colors.grey.shade900;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplo semana 3')),
      body: Center(
          child: Text(
        'Hola!!!',
        style: TextStyle(color: _originalTextColorBody),
      )),
      backgroundColor: _originalBackgroundColorBody,
      floatingActionButton: FloatingActionButton(
        onPressed: _modoOscuro,
        child: const Icon(Icons.dark_mode),
      ),
    );
  }

  void _modoOscuro() {
    setState(() {
      _originalTextColorBody = _darkModeTextColorBody;
      _originalBackgroundColorBody = _darkModeBackgroundColorBody;
      print('Clic en botón dark mode');
    });
  }
}
