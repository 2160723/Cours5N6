import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


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
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    height: double.infinity,
                    child: const Text(""),

                  ),
                ),
                Expanded(
                  flex: 1,
                  // pas forcement necessaire parce que 1 c'est la valeur par defaut
                  child: Container(
                    color: Colors.white,
                    height: double.infinity,
                    child: const Text(""),
                  ),
                ),
                Expanded(
                  flex: 1,
                  // pas forcement necessaire parce que 1 c'est la valeur par defaut
                  child: Container(
                    color: Colors.red,
                    height: double.infinity,
                    child: const Text(""),
                  ),
                )
              ],
            ),
          ),
        ],

      ),

    );
  }
}