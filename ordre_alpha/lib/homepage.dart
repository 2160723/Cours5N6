import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Personne {
  late String nom;
  late int id;
}

class _MyHomePageState extends State<MyHomePage> {
  List<Personne> listeEnMemoire = [];

  @override
  void initState() {
    super.initState();
    listeEnMemoire = [];

      Personne personne1 = Personne();
      personne1.nom = "Antoine";
      personne1.id = 0;
      listeEnMemoire.add(personne1);

    Personne personne2 = Personne();
    personne2.nom = "Kevin";
    personne2.id = 1;
    listeEnMemoire.add(personne2);

    Personne personne3 = Personne();
    personne3.nom = "Stuart";
    personne3.id = 2;
    listeEnMemoire.add(personne3);

    Personne personne4 = Personne();
    personne4.nom = "Bob";
    personne4.id = 3;
    listeEnMemoire.add(personne4);

    Personne personne5 = Personne();
    personne5.nom = "Antoine2";
    personne5.id = 4;
    listeEnMemoire.add(personne5);

    listeEnMemoire.shuffle();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView.builder(
            itemCount: listeEnMemoire.length,
            itemBuilder: (context, index) {
              return ListTile(leading: MaterialButton(onPressed: (){up(listeEnMemoire[index].id, index);}, child: Text('Up'), color: Colors.blue,), trailing: MaterialButton(onPressed: (){down(listeEnMemoire[index].id, index);}, child: Text('Down'), color: Colors.red,),  title: Text(listeEnMemoire[index].nom));
            }
            ,
          )),
    );
  }

  void up(int index, int position) {
    if(position != 0)
      {
        setState(() {
          Personne personne = listeEnMemoire[position];
          listeEnMemoire.removeAt(position);
          listeEnMemoire.insert(position - 1, personne);
        });

        if(checkOrder() == true)
        {
          Fluttertoast.showToast(
            msg: "l'ordre est correct",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0,
          );

          listeEnMemoire.shuffle();
        }

      }





  }
  bool checkOrder(){
    for(int i=0; i<listeEnMemoire.length;i++)
      {
        if(listeEnMemoire[i].id != i)
          {
            return false;
          }
      }
    return true;
  }

  void down(int index, int position) {
    if(position != listeEnMemoire.length - 1)
    {
      setState(() {
        Personne personne = listeEnMemoire[position];
        listeEnMemoire.removeAt(position);
        listeEnMemoire.insert(position + 1, personne);
      });
      if(checkOrder() == true)
        {
          Fluttertoast.showToast(
            msg: "l'ordre est correct",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0,
          );

          listeEnMemoire.shuffle();
        }

    }





  }
}