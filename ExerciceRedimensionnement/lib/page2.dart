import 'package:flutter/material.dart';
import 'package:redimensionnement/page3.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("page2"),
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
            builder: (context) => page3(),
          ),
        );},
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward_outlined),
      ),

    );
  }
}
