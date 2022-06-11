import 'package:ejercicio_semana11/database/db_singleton.dart';
import 'package:ejercicio_semana11/database/my_db.dart';
import 'package:ejercicio_semana11/models/scan_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mis scans'),
          actions: [
            IconButton(
                onPressed: () {
                  print('Eliminar todos los scan');
                },
                icon: Icon(Icons.delete))
          ],
        ),
        body: _CustomBody(),
        floatingActionButton: _CustomScanButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}

class _CustomScanButton extends StatelessWidget {
  const _CustomScanButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () async {
          // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          //     '#BA1725', 'Cancelar', false, ScanMode.QR);
          String barcodeScanRes = 'http://elcomercio.pe';
          print(barcodeScanRes);
        },
        child: Icon(Icons.center_focus_strong));
  }
}

class _CustomBody extends StatelessWidget {
  const _CustomBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //MyDB conexion = MyDB();
    //conexion.crearConexion();
    //Validar conexion y  creacion  de tabla
    //DBSingleton.db.database;
    //Validar insert
    final ScanModel scan = ScanModel(id: 3, valor: 'http://peru21.pe');
    //DBSingleton.db.insertarScan(scan);
    //Validar el update
    //DBSingleton.db.updateScan(scan);
    //DBSingleton.db.deleteScanById(24);
    //DBSingleton.db.getScanById(3).then((resultado) => print(resultado.valor));
    //DBSingleton.db.getAllScans().then((value) => print(value[3].valor));
    DBSingleton.db.deleteAllScans();
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => ListTile(
        title: Text('http://depor.com'),
        subtitle: Text('id'),
        leading: Icon(Icons.newspaper),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
        onTap: () {
          print('Enviar a google maps o al navegador por defecto');
        },
      ),
    );
  }
}
