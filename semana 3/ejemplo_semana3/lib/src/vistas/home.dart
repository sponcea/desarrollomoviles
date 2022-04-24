import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _originalTextColorBody = Colors.black;
  Color _originalBackgroundColorBody = Colors.white;
  Color _originalBackgroundColorAppbar = Colors.blue;

  Color _darkModeTextColorBody = Colors.white;
  Color _darkModeBackgroundColorBody = Colors.grey.shade900;
  Color _darkModeBackgroundColorAppbar = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            title: Text('item 1'),
            leading: Icon(Icons.ac_unit),
          ),
          ListTile(
            title: Text('item 2'),
          )
        ],
      )),
      appBar: AppBar(
        title: const Text('Ejemplo semana 3/4'),
        backgroundColor: _originalBackgroundColorAppbar,
      ),
      body: Center(
          child: Text(
        'Helou!!!',
        style: TextStyle(color: _originalTextColorBody),
      )),
      backgroundColor: _originalBackgroundColorBody,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _botonesFlotantes(),
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            print("Un botón persistente 1");
          },
          child: Icon(Icons.ac_unit_outlined),
          style: ElevatedButton.styleFrom(primary: Colors.red),
        ),
        ElevatedButton(
          onPressed: () {
            print("Un botón persistente 2");
          },
          child: Icon(Icons.access_alarm),
          style: ElevatedButton.styleFrom(primary: Colors.green),
        )
      ],
    );
  }

  void _modoOscuro() {
    setState(() {
      _originalTextColorBody = _darkModeTextColorBody;
      _originalBackgroundColorBody = _darkModeBackgroundColorBody;
      _originalBackgroundColorAppbar = _darkModeBackgroundColorAppbar;
      print('Clic en botón dark mode');
    });
  }

  void _modoClaro() {}

  Widget _botonesFlotantes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: _modoOscuro,
          child: const Icon(Icons.dark_mode),
        ),
        FloatingActionButton(
          onPressed: _modoClaro,
          child: const Icon(Icons.light_mode),
        ),
      ],
    );
  }
}
