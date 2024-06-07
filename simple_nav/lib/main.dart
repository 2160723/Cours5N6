import 'package:flutter/material.dart';
import 'package:simple_nav/ecran_2.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home page'),
      //routes: routes(),
    );
  }

  /*Map<String, WidgetBuilder> routes() {
    return {
      '/ecran2': (context) =>  Ecran2(),
      '/accueil': (context) => MyHomePage(title: "Home page"),
    };
  }*/
}


