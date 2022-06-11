// To parse this JSON data, do
//
//     final scanModel = scanModelFromJson(jsonString);

import 'dart:convert';

// ScanModel scanModelFromJson(String str) => ScanModel.fromJson(json.decode(str));

// String scanModelToJson(ScanModel data) => json.encode(data.toJson());

class ScanModel {
  int? id;
  String valor;
  //Sirve para crear un objeto ScanModel
  ScanModel({
    this.id,
    required this.valor,
  });
  //Ayuda a retornar un ScanModel a partir de un Json, lo usare para leerlo de la BD
  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        valor: json["valor"],
      );

  //Ayuda a retornar un Json  a partir de un  ScanModel, lo usare para escribir en la BD
  Map<String, dynamic> toJson() => {
        "id": id,
        "valor": valor,
      };
}
