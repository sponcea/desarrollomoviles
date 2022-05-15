import 'package:ejercicio_semana7/modelos/caballero.dart';
import 'package:flutter/material.dart';

class VistaDetalleCaballero extends StatelessWidget {
  const VistaDetalleCaballero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**Lectura del argumento que se pasa con pushNamed */
    final Caballero caballero =
        ModalRoute.of(context)!.settings.arguments as Caballero;
    return Scaffold(
      appBar: AppBar(
        title: Text('${caballero.nombre} de ${caballero.signo}'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Card(
                elevation: 100,
                shadowColor: Colors.amber.shade200,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: FadeInImage(
                  image: NetworkImage(caballero.urlImagen),
                  placeholder: AssetImage('assets/loading.gif'),
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(caballero.descripcion),
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.topLeft,
              child: Text(
                'Técnicas: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${caballero.tecnicas[index]}'),
                  leading: Icon(Icons.check),
                );
              },
              itemCount: caballero.tecnicas.length,
            )
          ],
        ),
      ),
    );
  }
}
