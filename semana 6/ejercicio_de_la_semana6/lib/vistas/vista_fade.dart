import 'package:flutter/material.dart';

class VistaFadeIn extends StatelessWidget {
  final String imageUrl =
      'https://static.wikia.nocookie.net/saintseiya/images/4/45/Manigoldo_de_cancer_lc.png/revision/latest?cb=20130627234154&path-prefix=es';
  final String placeholderRuta = 'assets/loading.gif';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('FadeIn')),
        body: Center(
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: FadeInImage(
                image: NetworkImage(imageUrl),
                width: double.infinity,
                placeholder: AssetImage(placeholderRuta)),
          ),
        ));
  }
}
