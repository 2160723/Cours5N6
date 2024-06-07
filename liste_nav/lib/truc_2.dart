import 'package:flutter/material.dart';

class truc2 extends StatefulWidget {
  final truc trucDeux;
  const truc2({super.key, required this.trucDeux});

  @override
  State<truc2> createState() => _truc2State();
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


class _truc2State extends State<truc2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('truc 2'),
      ),
      body: Text('nom :  ${widget.trucDeux.name}, id :  ${widget.trucDeux.id}'),
    );
  }
}
