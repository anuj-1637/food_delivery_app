import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Screens/started_screen.dart';

import 'main.dart';

class Splash_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Splash_Screen();
}

class _Splash_Screen extends State<Splash_Screen>{
  @override
  void initState() {

    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Started_Screen()));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/images/app_logo.png'), width: 100,height: 100,fit: BoxFit.contain,),
      ),
    );
  }
}