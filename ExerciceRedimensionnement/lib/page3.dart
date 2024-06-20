import 'package:flutter/material.dart';
import 'package:redimensionnement/page2.dart';
import 'package:redimensionnement/page4.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("page3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LayoutBuilder(builder:
                (BuildContext context, BoxConstraints constraints) {
              var size = MediaQuery.of(context).size;

              String width = size.width.toInt().toString();

              return Image.network(
                "https://fourn6-mobile-prof.onrender.com/exos/image?&width=$width",
                width: size.width,);
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => page4(),
          ),
        );},
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
