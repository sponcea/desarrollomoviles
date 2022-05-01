import 'package:ejercicio_semana5/vistas/lista_plata.dart';
import 'package:ejercicio_semana5/widgets/card_oro.dart';
import 'package:flutter/material.dart';

/**Creamos lista de caballeros de bronce leyendo de una lista */
class ListaOro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Caballeros de oro'),
          backgroundColor: Colors.amber,
        ),
        body: ListView(children: [
          GestureDetector(
            onTap: () => mostrarAlertar(context),
            child: CardOro(
              urlImagen:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgsdUwIiGN5rE3uVV_N9DjwZMUHbOaiofL0w&usqp=CAU',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'listaplata');
            },
            child: CardOro(
              urlImagen:
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/dc5800bf-e602-4ddf-94e5-a59ae9f226c0/d5ui1my-14e47979-6e95-4ad1-aaf7-26af9fdf1276.jpg/v1/fill/w_1068,h_748,q_70,strp/aldebaran_de_tauro_by_manudgi_d5ui1my-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MzgzNiIsInBhdGgiOiJcL2ZcL2RjNTgwMGJmLWU2MDItNGRkZi05NGU1LWE1OWFlOWYyMjZjMFwvZDV1aTFteS0xNGU0Nzk3OS02ZTk1LTRhZDEtYWFmNy0yNmFmOWZkZjEyNzYuanBnIiwid2lkdGgiOiI8PTU0NzIifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.O85Cqw2kayvTuWazMrDCYkRoTDxg77byDP2Kgvq7JHk',
            ),
          ),
        ]));
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
}
