import 'package:ejercicio_semana11/database/db_singleton.dart';
import 'package:ejercicio_semana11/models/scan_model.dart';
import 'package:flutter/material.dart';

class ScanProvider extends ChangeNotifier {
  //Este atributo sera el que se muestre en el HomeScreen por lo tanto
  //Debemos estar atentos a sus cambios de estado
  List<ScanModel> scans = [];

  insertScan(String valor) async {
    final scan = ScanModel(valor: valor);
    final idResultado = await DBSingleton.db.insertarScan(scan);

    /*Necesitamos pintar el scan creado en HomeScreen, para ello requerimos el ID creado
    en la BD
    */
    scan.id = idResultado;
    scans.add(scan);
    //Aviso quienes a los widgets que requieran conocer este cambio de estado de scans
    notifyListeners();
  }

  cargarScans() async {
    final scansDB = await DBSingleton.db.getAllScans();
    //Llenamos el atributo scans con lo que traemos de la BD
    scans = [...scansDB];
    notifyListeners();
  }

  borrarScans() async {
    await DBSingleton.db.deleteAllScans();
    //Limpio el atributo scans luego de borrar todo en la BD
    scans = [];
    notifyListeners();
  }

  borrarScansById(int id) async {
    //No podemos borrar de la vista antes que de la BD y eso ocurre con
    //el Dismissible
    //Por ello, luego de quitarlo de la vista, tambien debemos quitarlo de la lista scan
    scans.removeWhere((element) => element.id == id);
    //Finalmente actualizamos en la BD
    await DBSingleton.db.deleteScanById(id);
    cargarScans();
  }
}
