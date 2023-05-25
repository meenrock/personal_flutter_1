import 'package:flutter/material.dart';

class PictureWidget extends StatelessWidget {
  final String imageUrl;

  const PictureWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover, // Adjust this property to control the image's fit
      ),
    );
  }
}