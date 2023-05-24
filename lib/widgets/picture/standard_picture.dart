import 'package:flutter/material.dart';

class ZoomablePicture extends StatelessWidget {
  const ZoomablePicture(
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
            ),
            bottom: 0,
            right: 0,
          )
        ],
      ),
    );
  }
}
