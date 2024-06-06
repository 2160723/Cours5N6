import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
              child: Column(
              children: [
                 Container(
                  color: Colors.red,
                  height: 200,
                  width: double.infinity,
                   child: const Padding(
                     padding: EdgeInsets.all(8.0),
                   ),
                ),


                Container(
                  color: Colors.amber,
                  height: 200,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 200,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.black,
                  height: 200,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.purple,
                  height: 200,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.blue,
                  height: 200,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.yellow,
                  height: 200,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.pink,
                  height: 200,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.lightBlueAccent,
                  height: 200,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.orange,
                  height: 200,
                  width: double.infinity,
                ),


              ],
            ),
            ),
            ),
          ],
        ),
      );


  }
}