import 'package:ejercicio_semana7/modelos/caballero.dart';

class ColeccionCaballero {
  List<Caballero> caballero;

  ColeccionCaballero({
    required this.caballero,
  });

  factory ColeccionCaballero.fromJson(Map<String, dynamic> json) {
    var list = json['resultado'] as List;
    List<Caballero> listaCaballero =
        list.map((i) => Caballero.fromJson(i)).toList();
    return ColeccionCaballero(caballero: listaCaballero);
  }
}
