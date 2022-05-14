import 'package:flutter/material.dart';

class VistaDate extends StatefulWidget {
  @override
  State<VistaDate> createState() => _VistaDateState();
}

class _VistaDateState extends State<VistaDate> {
  DateTime fecha = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('FadeIn')),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    seleccionarFecha(context);
                  },
                  child: Text('Selecciona una fecha')),
              Text('${fecha.day}/${fecha.month}/${fecha.year}'),
            ],
          ),
        ));
  }

  void seleccionarFecha(BuildContext context) async {
    final DateTime? fechaSeleccionada = await showDatePicker(
        context: context,
        initialDate: fecha,
        firstDate: DateTime(2010),
        lastDate: DateTime(2025),
        helpText: 'Seleccione la fecha:',
        cancelText: 'Cancelar',
        confirmText: 'Ok');

    setState(() {
      fecha = fechaSeleccionada!;
    });
  }
}
