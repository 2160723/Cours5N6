import 'package:dio/dio.dart';
import 'package:exam2firestore/transfer.dart';
import 'package:flutter/material.dart';

import 'lib_http.dart';

class exerciceHttp extends StatefulWidget {
  const exerciceHttp({super.key});

  @override
  State<exerciceHttp> createState() => _exerciceHttpState();
}

class _exerciceHttpState extends State<exerciceHttp> {
  final TextEditingController _value1Controller = TextEditingController();
  final TextEditingController _value2Controller = TextEditingController();
  int highestNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(controller: _value1Controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
      hintText: "Entrez la valeur 1 ici",
    ),),
        TextField(controller: _value2Controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Entrez la valeur 2 ici",
          ),),
        ElevatedButton(onPressed: () async{
          try{
            RequetePlusGrand numbers = new RequetePlusGrand();
            try
            {
              numbers.val1 = int.parse(_value1Controller.text);
              numbers.val2 = int.parse(_value2Controller.text);
            }
            catch (e)
            {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Veuillez entrer des nombres entiers")));
              return;
            }


            setState(() {});
            highestNumber = await envoyerNumbers(numbers);


            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("le plus grand nombre est : " + highestNumber.toString())));
          }
          on DioException catch (e) {
            print(e);
            setState(() {});
            if(e.response.toString() == "NombresEgaux")
            {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Les deux nombres envoyes sont identiques")));
            }
            else
              {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Erreur reseau")));
              }
          }


        }, child: Text("Envoyer les nombres"))
      ],),
    );
  }
}
