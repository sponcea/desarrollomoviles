import 'dart:io';

import 'package:ejercicio_semana11/models/scan_model.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBSingleton {
  //El constructor privado
  DBSingleton._constructorPrivado();

  //el atributo estatico que requerimos para almacenar la instancia de la BD
  //Puede ser nulo pues en un principio no tiene ningun valor
  static Database? _dataBase;
  static final DBSingleton db = DBSingleton._constructorPrivado();

  Future<Database> get database async {
    if (_dataBase != null) {
      return _dataBase!;
    } else {
      return _dataBase = await inicializarBD();
    }
  }

  Future<Database> inicializarBD() async {
    Directory directorio = await getApplicationDocumentsDirectory();
    final path = join(directorio.path, 'ScansDB.db');
    print(path);
    return await openDatabase(path, version: 1,
        onCreate: (Database midatabase, int ver) async {
      await midatabase
          .execute("CREATE TABLE Scans(id INTEGER PRIMARY KEY, valor TEXT)");
    });
  }

  Future<int> insertarScan(ScanModel scan) async {
    //Creamos una instancia de la conexion, accedemos al atributo a traves de su getter
    final db = await database;
    final res = await db.insert('Scans', scan.toJson());
    return res;
  }

  Future<List<ScanModel>> getAllScans() async {
    //Creamos una instancia de la conexion, accedemos al atributo a traves de su getter
    final db = await database;
    final res = await db.query('Scans');
    //Para cada elemento del mapa, lo convierto a ScanModel  y lo agrego a una lista
    return res.map((elemento) => ScanModel.fromJson(elemento)).toList();
  }

  Future<int> deleteAllScans() async {
    //Creamos una instancia de la conexion, accedemos al atributo a traves de su getter
    final db = await database;
    final res = await db.delete('Scans');
    return res;
  }

  Future<int> deleteScanById(int id) async {
    //Creamos una instancia de la conexion, accedemos al atributo a traves de su getter
    final db = await database;
    final res = await db.delete('Scans', where: 'id=?', whereArgs: [id]);
    print(res);
    return res;
  }

  Future<ScanModel> getScanById(int id) async {
    //Creamos una instancia de la conexion, accedemos al atributo a traves de su getter
    final db = await database;
    final res = await db.query('Scans', where: 'id=?', whereArgs: [id]);
    //El query podria devolver mas de un resultado, por lo que solo obtenemos el primero
    //y lo pasamos a ScanModel
    return ScanModel.fromJson(res.first);
  }

  updateScan(ScanModel scan) async {
    //Creamos una instancia de la conexion, accedemos al atributo a traves de su getter
    final db = await database;
    final res = await db
        .update('Scans', scan.toJson(), where: 'id=?', whereArgs: [scan.id]);
  }
}
