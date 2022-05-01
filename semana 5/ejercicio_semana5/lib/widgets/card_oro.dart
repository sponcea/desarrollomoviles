import 'package:flutter/material.dart';

class CardOro extends StatelessWidget {
  final String urlImagen;

  const CardOro({
    Key? key,
    required this.urlImagen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 100,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.amber,
        child: Column(
          children: [
            Image(
              image: NetworkImage(urlImagen),
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              child: Text('Un caballero dorado'),
              padding: EdgeInsets.all(20),
            ),
          ],
        ));
  }
}
