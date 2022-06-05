import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 0.78,
                  stops: [0.1, 0.65],
                  colors: [Color(0xffBA1725), Color(0xff150103)])),
        ),
        Center(
          child: Container(
            child: Image(image: AssetImage('assets/aldebaran.jpeg')),
          ),
        )
      ],
    );
  }
}
