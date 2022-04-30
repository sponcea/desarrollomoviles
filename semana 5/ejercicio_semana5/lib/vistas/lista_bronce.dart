import 'package:flutter/material.dart';

class ListaBronce extends StatelessWidget {
  final caballero = [
    'Seiya de pegaso',
    'Ikki de Fénix',
    'Shiryu de Dragón',
    'Shun de andrómeda'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Caballeros dorados con ListTile'),
          backgroundColor: Colors.amber.shade600,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(caballero[index]),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: caballero.length));
  }
}
