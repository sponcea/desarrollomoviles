import 'package:ejercicio_semana11/database/db_singleton.dart';
import 'package:ejercicio_semana11/database/my_db.dart';
import 'package:ejercicio_semana11/models/scan_model.dart';
import 'package:ejercicio_semana11/providers/scan_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  final scanProvider =
                      Provider.of<ScanProvider>(context, listen: false);
                  scanProvider.borrarScans();
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
          //String barcodeScanRes = 'geo:-12.088642,-77.054860';
          String barcodeScanRes = 'http://elcomercio.pe';
          //El onPressed no va a actualizar ninguna vista, solo a insertar en la BD, entonces listen: false
          final scanProvider =
              Provider.of<ScanProvider>(context, listen: false);
          scanProvider.insertScan(barcodeScanRes);
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
    //final ScanModel scan = ScanModel(id: 3, valor: 'http://peru21.pe');
    //DBSingleton.db.insertarScan(scan);
    //Validar el update
    //DBSingleton.db.updateScan(scan);
    //DBSingleton.db.deleteScanById(24);
    //DBSingleton.db.getScanById(3).then((resultado) => print(resultado.valor));
    //DBSingleton.db.getAllScans().then((value) => print(value[3].valor));
    //DBSingleton.db.deleteAllScans();
    //este provider si esta atento a los  cambios de estado para que se pueda pintar
    final scanProvider = Provider.of<ScanProvider>(context);
    final scanList = scanProvider.scans;
    scanProvider.cargarScans();

    return ListView.builder(
      itemCount: scanList.length,
      itemBuilder: (BuildContext context, int index) => Dismissible(
        key: Key(scanList[index].id.toString()),
        background: Container(color: Colors.red),
        onDismissed: (DismissDirection direction) {
          final scanProvider =
              Provider.of<ScanProvider>(context, listen: false);
          scanProvider.borrarScansById(scanList[index].id!);
        },
        child: ListTile(
          title: Text(scanList[index].valor),
          subtitle: Text(scanList[index].id.toString()),
          leading: scanList[index].valor.contains('http')
              ? Icon(Icons.newspaper)
              : Icon(Icons.map_outlined),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          onTap: () {
            print('Enviar a google maps o al navegador por defecto');
            lanzarUrl(context, scanList[index]);
          },
        ),
      ),
    );
  }
}

void lanzarUrl(BuildContext context, ScanModel scan) async {
  final Uri url = Uri.parse(scan.valor);

  //Si es http
  if (scan.valor.contains('http')) {
    //Es una direccion
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else if (scan.valor.contains('geo')) {
    Navigator.pushNamed(context, 'maps', arguments: scan);
  } else {
    //Error
    throw 'No se pudo cargar la $url';
  }
  //Si es geo
}
