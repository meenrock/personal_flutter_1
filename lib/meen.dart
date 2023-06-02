import 'package:flutter/material.dart';
import 'package:personal_flutter_1/pages/home/weather.dart';
import 'package:personal_flutter_1/widgets/column/column.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is Fun!'),
        ),
        body: Center(
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Text('hekkoojodoasdo'),
              const PictureWidget(imageUrl: 'https://m.media-amazon.com/images/I/71SCMYGv0BL._SX500_.jpg',)
              
            ],
          ),
      ),
        
      )
    );
  }



}

