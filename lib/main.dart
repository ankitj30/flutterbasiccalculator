import 'package:flutter/material.dart';
import 'package:statefulexample/Intropage.dart';

void main() {
  runApp(const MyApp()); // make this const
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // keep const

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(), // <-- also make this const
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key}); // <-- add const here

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Basic Calculator')),
      backgroundColor: Colors.blueAccent,
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                controller: no1controller,
                ),
                TextField(
                controller: no2controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());
                        var sum = no1+no2;
                        result = " The sum $no1 and $no2 is $sum";
                        setState(() {});
                      }, child: Text('add')),

                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());
                        var diff = no1-no2;
                        result = " The sub $no1 and $no2 is $diff";
                        setState(() {});
                      }, child: Text('sub')),

                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());
                        var mul = no1*no2;
                        result = " The mul $no1 and $no2 is $mul";
                        setState(() {});
                      }, child: Text('mul')),

                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());
                        var div = no1/no2;
                        result = " The div $no1 and $no2 is ${div.toStringAsFixed(3)}";
                        setState(() {});
                      }, child: Text('div')),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(21),
                  child: Text(result,style: TextStyle(fontSize: 25,color: Colors.black87),),),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Intropage(),)
                    );
                  }, child: Text('push to next page')),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
