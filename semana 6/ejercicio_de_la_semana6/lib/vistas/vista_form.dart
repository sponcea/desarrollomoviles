import 'package:flutter/material.dart';

class VistaForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'Coloca tu nombre',
                  icon: Icon(Icons.people_alt),
                  suffixIcon: Icon(Icons.abc)),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              initialValue: 'Sergio',
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              initialValue: 'Sergio',
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
