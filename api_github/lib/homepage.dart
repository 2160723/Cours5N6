import 'package:api_github/transfer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Truc> trucs = [];
  final TextEditingController _controller = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void getHttpListComplex(String username) async {
    try {
      var response = await Dio().get('https://api.github.com/users/$username/repos');
      print(response);
      var listeJSON = response.data as List;
      var listeTruc = listeJSON.map(
              (elementJSON) {
            return Truc.fromJson(elementJSON);
          }
      ).toList();
      this.trucs =  listeTruc;
      setState(() {});
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Erreur reseau')
          )
      );
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(controller:_controller,),
            ElevatedButton(onPressed: (){
              getHttpListComplex(_controller.text);
            }, child: Text('Afficher les repos')),
        Expanded(
          child: ListView.builder(
            itemCount: trucs.length,
            itemBuilder: (context, index) {
              return ListTile(title: Row(children:[Text('nom : ${trucs[index].name} public ? : ${trucs[index].private}'),
              ]
              ),
                  tileColor: Colors.lightBlue, shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.black),)
              );
            },
          ),
        ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}