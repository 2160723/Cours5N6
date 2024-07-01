import 'package:flutter/material.dart';

import 'generated/l10n.dart';

class exerciceTraduction extends StatefulWidget {
  const exerciceTraduction({super.key});

  @override
  State<exerciceTraduction> createState() => _exerciceTraductionState();
}

class _exerciceTraductionState extends State<exerciceTraduction> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Exercice traduction"),
      ),
      body: Column(children: [
        Container(
          child: Row(
            children: [
              Expanded(flex: 4, child: Container(child: Text(S.of(context).MacLife, style: TextStyle(color: Colors.white)), color: Colors.deepPurple,)),
              Expanded(flex: 1, child: Container(child: Text("")))
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(flex: 1, child: Container(child: Text(""))),
              Expanded(flex: 4, child: Container(child: Text(S.of(context).ViveMac, style: TextStyle(color: Colors.white)), color: Colors.pinkAccent,)),
            ],
          ),
        ),

          Expanded(
            child: Row(
              children: [
                Container(color: Colors.deepPurpleAccent, child: Text(S.of(context).TeacherBroken, style: TextStyle(color: Colors.white)))
                        ,
              ],
            ),
          )
      ],),
    );
  }
}
