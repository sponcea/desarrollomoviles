import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

//!EN REVISION
class MyDB {
  static Future<Database>? database;

  Future<void> crearConexion() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(await documentsDirectory.path, 'ScansEjemplo.db');
    print(path);
    database = openDatabase(
      // Establecer la ruta a la base de datos. Nota: Usando la función `join` del
      // complemento `path` es la mejor práctica para asegurar que la ruta sea correctamente
      // construida para cada plataforma.
      path,
      // Cuando la base de datos se crea por primera vez, crea una tabla para almacenar dogs
      onCreate: (db, version) {
        // Ejecuta la sentencia CREATE TABLE en la base de datos
        return db.execute(
          "CREATE TABLE Scans(id INTEGER PRIMARY KEY, valor TEXT)",
        );
      },
      // Establece la versión. Esto ejecuta la función onCreate y proporciona una
      // ruta para realizar actualizacones y defradaciones en la base de datos.
      version: 1,
    );
  }
}
