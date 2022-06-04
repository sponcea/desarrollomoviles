import 'package:flutter/material.dart';
import 'package:ejercicio_semana9/Widgets/body_basico.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _SliverAppBar(),
        SliverList(
            delegate: SliverChildListDelegate([
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Cuerpo(),
              Text(
                  'Ex id consectetur officia nostrud. Laboris occaecat minim dolore dolor do enim aliquip. Ex dolor nulla nulla esse eu et nisi duis anim officia quis. Adipisicing occaecat irure veniam eiusmod minim id et est pariatur. Est tempor consequat ex reprehenderit fugiat veniam nisi Lorem ullamco. Ex culpa nulla labore exercitation. Amet ipsum dolor est cillum.'),
              Text(
                  'Ex id consectetur officia nostrud. Laboris occaecat minim dolore dolor do enim aliquip. Ex dolor nulla nulla esse eu et nisi duis anim officia quis. Adipisicing occaecat irure veniam eiusmod minim id et est pariatur. Est tempor consequat ex reprehenderit fugiat veniam nisi Lorem ullamco. Ex culpa nulla labore exercitation. Amet ipsum dolor est cillum.'),
              Text(
                  'Ex id consectetur officia nostrud. Laboris occaecat minim dolore dolor do enim aliquip. Ex dolor nulla nulla esse eu et nisi duis anim officia quis. Adipisicing occaecat irure veniam eiusmod minim id et est pariatur. Est tempor consequat ex reprehenderit fugiat veniam nisi Lorem ullamco. Ex culpa nulla labore exercitation. Amet ipsum dolor est cillum.')
            ],
          )
        ]))
      ],
    ));
  }
}

class _SliverAppBar extends StatelessWidget {
  const _SliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            color: Color.fromRGBO(1, 1, 1, 0.1),
            child: Text('Hola!!!')),
        background: FadeInImage(
          placeholder: AssetImage('assets/Loading_icon.gif'),
          image: AssetImage('assets/atardecer.jpeg'),
          //Para que ocupe todo el espacio
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
