import 'package:flutter/material.dart';

class Lista1Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Caballeros dorados'),
        backgroundColor: Colors.amber.shade600,
      ),
      body: ListView(
        children: [
          Container(
            child: Center(
              child: Text(
                'Mu de Aries',
              ),
            ),
            height: 50,
          ),
          Container(
              height: 50, child: Center(child: Text('Aldebarán de Tauro'))),
          Container(height: 50, child: Center(child: Text('Saga de Géminis'))),
          Container(
            child: Center(child: Text('Manigoldo de Cáncer')),
            height: 50,
          ),
          Container(
            child: Center(child: Text('Aioria de Leo')),
            height: 50,
          )
        ],
      ),
    );
  }
}
