import 'package:farmtrust/constants/assets.dart';
import 'package:farmtrust/models/notificaiton/notification_model.dart';
import 'package:farmtrust/routes/routes.dart';
import 'package:farmtrust/widgets/picture/zoomable_picture_detail.dart';
import 'package:flutter/material.dart';

class ZoomablePicture extends StatelessWidget {
  final dynamic rgb;
  final dynamic riskSpot;
  final SateliteScale? satelliteScale;
  final String date;
  const ZoomablePicture(
      {Key? key,
      this.rgb,
      this.riskSpot,
      this.satelliteScale,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(Routes.zoomableImageDetail,
            arguments: ZoomablePictureDetailArgument(
                rgb: rgb,
                riskSpot: riskSpot,
                satelliteScale: satelliteScale,
                date: date));
      },
      child: Stack(
        children: [
          Image.network(
            rgb,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          Image.network(
            riskSpot,
            width: double.infinity,
            fit: BoxFit.contain,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
          ),
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
              child: Image.asset(
                Assets.zoomIcon,
                scale: 5,
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
