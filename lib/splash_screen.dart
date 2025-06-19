import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statefulexample/main.dart';

class splash_screen extends StatefulWidget{
  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       color: Colors.blueAccent,
       child: Center(
         child: Column(
           mainAxisAlignment:  MainAxisAlignment.center,
           children: [
             Text('AJ Learn ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)
           ],
         ),
       ),
     ),
   );
  }
}