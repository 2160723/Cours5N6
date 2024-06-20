import 'package:flutter/material.dart';
import 'package:redimensionnement/page5.dart';

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("page4"),
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
            builder: (context) => page5(),
          ),
        );},
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
