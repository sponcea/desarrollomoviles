import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class SwiperCarruselScreen extends StatelessWidget {
  const SwiperCarruselScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: Text('Swiper y Carrusel screen')),
        body: Column(
          children: [_CustomSwiper(size: size), _CustomCarrusel(size: size)],
        ));
  }
}

class _CustomCarrusel extends StatelessWidget {
  final Size size;
  const _CustomCarrusel({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: size.height * 0.38,
      //height: 250,
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(left: 10, bottom: 10),
          child: Text('Carrusel horizontal'),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                    width: 150,
                    //height: 20,
                    //color: Colors.red,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: FadeInImage(
                            placeholder: AssetImage('assets/Loading_icon.gif'),
                            image: AssetImage('assets/no-image.jpg'),
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 190,
                          ),
                        ),
                        Text(
                          'Esse adipisicing duis ut ex veniam sit quis non eiusmod laboris nulla Lorem adipisicing.',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )),
        )
      ]),
    );
  }
}

class _CustomSwiper extends StatelessWidget {
  const _CustomSwiper({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: size.height * 0.5,
      //width: double.infinity,
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            clipBehavior: Clip.antiAlias,
            child: FadeInImage(
              placeholder: AssetImage('assets/Loading_icon.gif'),
              image: NetworkImage('http://via.placeholder.com/300x400'),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
