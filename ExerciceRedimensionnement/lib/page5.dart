import 'package:flutter/material.dart';
import 'package:redimensionnement/homepage.dart';

class page5 extends StatefulWidget {
  const page5({super.key});

  @override
  State<page5> createState() => _page5State();
}

class _page5State extends State<page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("page5"),
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
            builder: (context) => MyHomePage(title: "page1"),
          ),
        );},
        tooltip: 'Increment',
        child: const Icon(Icons.home),
      ),
    );
  }
}
