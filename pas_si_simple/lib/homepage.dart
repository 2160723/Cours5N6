import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    height: 200,
                  ),
                ),

                  Expanded(
                    flex: 1,

                    child: Container(
                      height: 200,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: const Text("YO", style: TextStyle(color: Colors.red),),



                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: const Text(""),
                                    height: double.infinity,

                                  ),
                                ),
                              ],

                            ),

                          ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: const Text(""),

                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: const Text(""),
                                      color: Colors.black,
                                      height: double.infinity,

                                    ),
                                  ),
                                ],

                              ),
                            ),
                          ),
                        ]

                        ),
                    ),
                    ),


                ],

              ),



        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:[
              Expanded(
                child: SizedBox(
                          
                  width: double.infinity,
                  child: MaterialButton(
                    color: Colors.blue,
                          
                    onPressed: () {},
                    child: const Text('Bouton du bas'),
                  ),
                ),
              ),
            ]
          ),
        ),
            ],
          ),
      ),

    );
  }
}