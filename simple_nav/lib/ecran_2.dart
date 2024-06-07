import 'package:flutter/material.dart';

// TODO Un ecran minimal avec un tres peu de code
class Ecran2 extends StatefulWidget {
  final String leParametre;

  const Ecran2({super.key, required this.leParametre});

  @override
  State<Ecran2> createState() => _Ecran2State();
}

class _Ecran2State extends State<Ecran2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecran 2'),
      ),
      body: Text('Tu as navigué vers 2 avec ${widget.leParametre}'),
    );
  }
}