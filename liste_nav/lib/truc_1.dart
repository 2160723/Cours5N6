import 'dart:ffi';

import 'package:flutter/material.dart';

class truc1 extends StatefulWidget {
  final truc trucUn;
  const truc1({super.key, required this.trucUn});

  @override
  State<truc1> createState() => _truc1State();
}

class truc {
   late int id;
   late String name;

  truc(int id, String name)
  {
    this.id = id;
    this.name = name;
  }

}

class _truc1State extends State<truc1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('truc 1'),
      ),
      body: Text('nom :  ${widget.trucUn.name}, id :  ${widget.trucUn.id}'),
    );
  }
}
