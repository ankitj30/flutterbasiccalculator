import 'package:flutter/material.dart';
import 'package:statefulexample/main.dart';

class Intropage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueAccent,
      title: Text('Intro'),
    ),
    body:Center(
      child: Column(
        children: [

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Hii I Am AnKit "),
           ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('This is Intro Screen ',style: TextStyle(fontSize: (25)),),
          ),

          ElevatedButton(onPressed:(){
            Navigator.pop(context);
          }, child: Text("calculator",style: TextStyle(fontSize: (20)),))
        ],
      ),
    ),
  );
  }
}
