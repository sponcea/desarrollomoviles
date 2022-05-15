class Caballero {
  String id;
  String nombre;
  String signo;
  String urlImagen;
  String descripcion;
  List<String> tecnicas;
  int caballeroId;
  Caballero({
    required this.id,
    required this.nombre,
    required this.signo,
    required this.urlImagen,
    required this.descripcion,
    required this.tecnicas,
    required this.caballeroId,
  });

  factory Caballero.fromJson(Map<String, dynamic> json) => Caballero(
        id: json["_id"],
        nombre: json["nombre"],
        signo: json["signo"],
        urlImagen: json["urlImagen"],
        descripcion: json["descripcion"],
        tecnicas: List<String>.from(json["tecnicas"].map((x) => x)),
        caballeroId: json["id"],
      );
}
