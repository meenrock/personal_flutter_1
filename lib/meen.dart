import 'package:flutter/material.dart';
import 'package:personal_flutter_1/pages/home/weather.dart';
import 'package:personal_flutter_1/widgets/column/column.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is Fun!'),
        ),
        body: Center(
          child: PictureWidget(
            imageUrl: 'https://example.com/image.jpg',
          ),
        ),
      )
    );
  }



}

