import 'package:flutter/material.dart';

class Food_Items_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Food_Items_Screen();
}

class _Food_Items_Screen extends State<Food_Items_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(142, 142, 142, 0.1)),
      backgroundColor: Color.fromRGBO(142, 142, 142, 0.1),
      body: Column(children: [Image.asset("assets/images/Mask Group.png")]),
    );
  }
}
