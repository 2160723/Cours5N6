import 'package:flutter/material.dart';
import 'package:redimensionnement/page2.dart';

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




  @override
  Widget build(BuildContext context) {
    List<String> urls = [];
    for(int i=0; i<20; i++)
      {
        String param = "test="+(i.toString());
        urls.add("https://fourn6-mobile-prof.onrender.com/exos/image?"+param);
      }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
    Expanded(
      child: ListView.builder(
      itemCount: urls.length,
      itemBuilder: (context, index) {
        return Container(
          width: 500,
          height: 500,
          child: Image.network(
            urls[index],
          ),
        );
      }),
    ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => page2(),
          ),
        );},
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}