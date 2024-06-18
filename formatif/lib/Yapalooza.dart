import 'package:flutter/material.dart';
import 'package:formatif/ecranUn.dart';

class yapalooza extends StatefulWidget {
  const yapalooza({super.key});

  @override
  State<yapalooza> createState() => _yapaloozaState();
}

class _yapaloozaState extends State<yapalooza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Yapalooza"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(color: Colors.greenAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                ElevatedButton(onPressed: () {}, child: Text("L'espace entre les boutons et le texte sont les mêmes")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Texte au milieu"),
                  ],
                ),
                ElevatedButton(onPressed: () {}, child: Text("Pipo popi")),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomePage(title: "Ecran 1"),
            ),
          );
        },
        child: const Icon(Icons.arrow_left),
      ),
    );
  }
}
