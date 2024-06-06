import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int indexLapin = Random().nextInt(4);
  int _flaps = 0;
  int _pafs = 0;

void gererTape(int index){
  print('bouton ' + index.toString());
  if(this.indexLapin == index)
  {
    this._pafs++;
    this.indexLapin = Random().nextInt(4);
  }
  else
  {
    this._flaps++;
  }
  setState(() {

  });
}

  @override
  Widget build(BuildContext context) {
    print(this.indexLapin);
   var b0 = MaterialButton(
      onPressed: (){
        gererTape(0);
      },
      child: Text(this.indexLapin == 0? 'Lapin': 'Taupe'),
    );
   var b1 = MaterialButton(
     onPressed: (){
       gererTape(1);

     },
     child: Text(this.indexLapin == 1? 'Lapin': 'Taupe'),
   );
   var b2 = MaterialButton(
     onPressed: (){
       gererTape(2);

     },
     child: Text(this.indexLapin == 2? 'Lapin': 'Taupe'),
   );
   var b3 = MaterialButton(
       onPressed: (){
        gererTape(3);
     },
     child: Text(this.indexLapin == 3? 'Lapin': 'Taupe'),
   );


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Tape le lapin'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Pafs: " + this._pafs.toString(),
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
                Text(
                    "Flops: " + this._flaps.toString(),
                    style: TextStyle(color: Colors.red, fontSize: 20)
                )
              ],
            ),
            Text(
                'Tape le lapin',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900)
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                b0,
                b1,
              ],
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                b2,
                b3,
              ],
            )

          ],
        ),
      ),

    );
  }
}