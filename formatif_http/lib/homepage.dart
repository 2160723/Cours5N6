
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:formatif_http/lib_http.dart';
import 'package:formatif_http/transfer.dart';

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
  List<Nombre> nombre = [];
  final TextEditingController _textController = TextEditingController();

getNombre() async{
  try{
    nombre = await getNombreInfo(int.parse(_textController.text));
    setState(() {});
  }
  on Exception catch (e) {
    print(e);
  }

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(controller: _textController,),
            ElevatedButton(onPressed : () {getNombre();}, child: Text("Va chercher les représentations")),
    Expanded(
    child: ListView.builder(
    itemCount: nombre.length,
    itemBuilder: (context, index) {
      return
      ListTile(
        leading: Text(nombre[index].nombre.toString()),
        trailing: Column(
          children: [Text(nombre[index].description.toString()),
          Text(nombre[index].representation.toString()),
          ],
        )

      );
    }
    ),
    ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
