import 'package:flutter/material.dart';

import 'cauculadora.dart';

void main() {
  runApp(const MyApp());
}

class App {
  const App();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'leyout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'cauculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    //color: Colors.amber,
                    //child: const Text('layout superior'),
                  ),
                ),
         Expanded(
          flex: 8,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ 
              Expanded(
                  child: Container(
                   // alignment: Alignment.center,
                    //color: Colors.red,
                    //child: const Text('primeira coluna'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center, 
                    decoration: BoxDecoration(
                    color:  Colors.grey.shade100, 
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    boxShadow: const [
                      BoxShadow( 
                        color: Colors.black45, 
                        blurRadius: 10,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                    child: const Calculadora(),
                  ),
                ),
              Expanded(
                  child: Container(
                    //alignment: Alignment.center,
                    //color: Colors.pink,
                    //child: const Text('terceira coluna'),
                  ),
                ),
            ],
          ),
        ),
              Expanded(
                flex: 2,
            child: Container(
              alignment: Alignment.center,
              //color: Colors.blue,
              //child: const Text('layout inferior'),
            ),
          ),
        ],

    ),
  ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
