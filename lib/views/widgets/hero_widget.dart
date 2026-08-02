import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero1',
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(20.0),
        child: Image.asset("assets/images/paulriken.jpeg"),
      ),
    );
  }
}
