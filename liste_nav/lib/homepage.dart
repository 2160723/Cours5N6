
import 'package:flutter/material.dart';
import 'package:liste_nav/truc_1.dart';

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
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => truc1(
                      trucUn: truc(1, "test"),
                    ),

                  ),

                );
              },
              child: Text('Vers Truc 1'),
            ),

            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => truc1(
                      trucUn: truc(2, "truc 2"),
                    ),

                  ),

                );
              },
              child: Text('Vers Truc 2'),
            ),

          ],

      ),

    );
  }
}