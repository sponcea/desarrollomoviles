import 'package:flutter/material.dart';

class VistaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('Fade in image'),
              leading: Icon(Icons.image),
              onTap: () {
                Navigator.pushNamed(context, 'fadinimage');
              },
            )
          ],
        ));
  }
}
