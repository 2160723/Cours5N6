import 'package:flutter/material.dart';
import 'package:simple_nav/ecran_2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textController = TextEditingController();




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Ecran2(
                         leParametre: textController.text,
                    ),

                  ),

                );
              },
              child: Text('Vers Ecran 2'),
            ),
            TextFormField(
              controller: textController,
              decoration: InputDecoration(
                labelText: "Enter text here",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                // The validator receives the text that the user has entered.
              ),

            )
          ],

      ),
    );
  }
}