import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
List<int> suiteFibonacci = [];

  List<int> generateFibonacciSequence(int n) {
    List<int> sequence = [];

    if (n <= 0) {
      return sequence;
    }
    sequence.add(0);

    if (n == 1) {
      return sequence;
    }

    sequence.add(1);

    for (int i = 2; i < n; i++) {
      sequence.add(sequence[i - 1] + sequence[i - 2]);
    }
    sequence.removeAt(0);

    return sequence;
  }

  @override
  void initState() {
    super.initState();
    suiteFibonacci = generateFibonacciSequence(50);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        /*child: ListView(
          children: suiteFibonacci.map((e) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.red, child: Text(e.toString(), textAlign: TextAlign.center)),
          )).toList(),
        ),*/
          child: ListView.builder(
            itemCount: suiteFibonacci.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(title: Center(child: Text('${suiteFibonacci[index]}')), tileColor: Colors.red, shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.black),
                ),),
              );
            },
          )),
    );
  }
}