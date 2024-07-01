import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exam2firestore/exerciceHttp.dart';
import 'package:exam2firestore/exerciceTraduction.dart';
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

  void sendDocument() {
    final db = FirebaseFirestore.instance;

    final user = <String, dynamic>{
      "firstName": "Antoine",
      "lastName": "Beaulieu",
      "creationDate": DateTime.now(),
      "expectedExamScore": 100
    };
    db.collection("super-Beaulieu-Antoine-infini").add(user);
    setState(() {});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => exerciceTraduction(),
                ),
              );}, child: Text("Naviguer a l exercice de traduction")),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => exerciceHttp(),
                ),
              );}, child: Text("Naviguer a l exercice http"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: sendDocument,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}