import 'package:flutter/material.dart';

class Lista1ListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Caballeros dorados con ListTile'),
        backgroundColor: Colors.amber.shade600,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Shaka de Virgo'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Es el 6to caballero dorado'),
                Text('Es el 6to caballero dorado')
              ],
            ),
            leading: Icon(
              Icons.sunny,
              color: Colors.amber,
            ),
            trailing:
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.amber),
          ),
          ListTile(
            title: Text('Dohko de Libra'),
            leading: Icon(
              Icons.sunny,
              color: Colors.amber,
            ),
          ),
          ListTile(
            title: Text('Milo de Scorpio'),
            leading: Icon(Icons.sunny),
          ),
          ListTile(
            title: Text('Aioros de Sagitario'),
            leading: Icon(Icons.sunny),
          )
        ],
      ),
    );
  }
}
