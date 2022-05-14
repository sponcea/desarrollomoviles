import 'package:flutter/material.dart';

class VistaCircleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircleAvatar'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/saintseiya/images/4/45/Manigoldo_de_cancer_lc.png/revision/latest?cb=20130627234154&path-prefix=es'),
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundColor: Colors.red,
          backgroundImage: NetworkImage(
              'https://static.wikia.nocookie.net/saintseiya/images/4/45/Manigoldo_de_cancer_lc.png/revision/latest?cb=20130627234154&path-prefix=es'),
        ),
      ),
    );
  }
}
