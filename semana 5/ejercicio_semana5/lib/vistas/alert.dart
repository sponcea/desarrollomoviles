import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo de Alerta')),
      body: Center(
        child: Center(
            child: ElevatedButton(
          child: Text('Clic'),
          onPressed: () {
            return mostrarAlertar(context);
          },
        )),
      ),
    );
  }
}

void mostrarAlertar(BuildContext context) {
  showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Hola!!!'),
          content: Text('contenido!!!'),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Icon(Icons.cancel))
          ],
        );
      });
}
