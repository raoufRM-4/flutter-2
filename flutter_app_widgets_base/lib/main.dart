import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
     
        title: Text(widget.title),
      ),
      body: Center(
     
        child: Column(
      
          mainAxisAlignment: .center,
          children: [
            const Text('hello world'),
                  Text("2eme hello "),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              'Boîte stylisée avec Container',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          const Text("Quebec"),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(width: 200, height: 200, color: Colors.blue[100]),
              Icon(Icons.star, size: 100, color: Colors.amber),
              Text(
              "Superposé !",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
             ),
            ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.home, color: Colors.blue, size: 40),
                Icon(Icons.star, color: Colors.amber, size: 40),
                Icon(Icons.settings, color: Colors.grey, size: 40),
                Icon(Icons.settings, color: Colors.green, size: 40),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Titre principal', style: TextStyle(fontSize: 30)),
                SizedBox(height: 20),
                Text('Sous-titre ou description'),
                Icon(Icons.thumb_up, color: Colors.green, size: 40),
               ],
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
