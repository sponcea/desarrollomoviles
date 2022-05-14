import 'dart:math';

import 'package:flutter/material.dart';

class VistaInfiniteScroll extends StatefulWidget {
  const VistaInfiniteScroll({Key? key}) : super(key: key);

  @override
  State<VistaInfiniteScroll> createState() => _VistaInfiniteScrollState();
}

class _VistaInfiniteScrollState extends State<VistaInfiniteScroll> {
  final ScrollController scrollController = ScrollController();
  List<int> imagenes = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  bool cargando = false;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      //print('${scrollController.position.pixels}');
      //print('Tamaño máximo: ${scrollController.position.maxScrollExtent}');
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        cargarImagenes();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Infinite scroll')),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          controller: scrollController,
          itemBuilder: (context, indice) {
            return FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                width: double.infinity,
                fit: BoxFit.cover,
                height: 300,
                image: NetworkImage(
                    'https://picsum.photos/id/${imagenes[indice]}/500/300'));
          },
          itemCount: imagenes.length,
        ),
      ),
    );
  }

  int randomIndex(int max) {
    Random random = new Random();
    int numeroRandom = random.nextInt(max);
    return numeroRandom;
  }

  Future cargarImagenes() async {
    /**Como cargando por defecto es false, entonces al interactuar con el scroll, 
     * sí entrará al if, y actualizará el estado para que si vuelvo a interactuar con el scroll antes de
     * los 5 segundos, que no hagan carga, solo se podrá hacer una nueva carga, luego de los 5 segundos
     */
    if (!cargando) {
      /** */
      cargando = true;
      setState(() {});
      await Future.delayed(Duration(seconds: 5));
      incrementarCantImagenes();
      cargando = false;
      setState(() {});
    }
  }

  void incrementarCantImagenes() {
    final ultimaImagen = imagenes.last;
    imagenes.addAll([1, 2, 3, 4, 5].map((e) => ultimaImagen + e));
    setState(() {});
    print(imagenes);
  }

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 5));
    final ultimaImagen = imagenes.last;
    imagenes.clear();
    imagenes.add(ultimaImagen + 1);
    print(imagenes);
    incrementarCantImagenes();
  }
}
