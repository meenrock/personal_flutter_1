import 'package:personal_flutter_1/constants/colors.dart';
import 'package:personal_flutter_1/constants/dimens.dart';
import 'package:flutter/material.dart';

class WeatherInformation extends StatelessWidget {
  final String address;
  final String path;
  final Function onTap;
  final String condition;
  const WeatherInformation({
    Key? key,
    required this.address,
    required this.path,
    required this.onTap,
    required this.condition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 3,
        child: SizedBox(
          width: 150,
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(condition,
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis),
              Image.asset(
                path,
                scale: 9,
              ),
              const SizedBox(
                height: Dimens.m,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Dimens.m),
                child: SizedBox(
                    child: RichText(
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  text: TextSpan(
                    children: [
                      const WidgetSpan(
                        child: Icon(
                          Icons.location_on,
                          size: 18,
                          color: AppColors.darkBlue,
                        ),
                      ),
                      TextSpan(
                        text: ' $address',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
