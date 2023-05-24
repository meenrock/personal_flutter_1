import 'package:personal_flutter_1/constants/colors.dart';
import 'package:personal_flutter_1/constants/dimens.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Function onPressed;
  final bool? showBorder;
  final bool? isFill;
  final Color? color;
  const Button({
    Key? key,
    required this.title,
    required this.onPressed,
    this.showBorder,
    this.isFill,
    this.color,
  }) : super(key: key);

  Widget _button(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.l),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.button!.apply(
                color: showBorder != null && showBorder == true
                    ? isFill != null && isFill == true
                        ? color ?? AppColors.darkBlue
                        : Colors.white
                    : AppColors.darkBlue),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return showBorder != null && showBorder!
        ? IntrinsicWidth(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: isFill != null && isFill == true
                                ? color != null
                                    ? color!
                                    : AppColors.darkBlue
                                : showBorder != null && showBorder == true
                                    ? color != null
                                        ? color!
                                        : AppColors.darkBlue
                                    : Colors.white,
                            width: 2,
                          ),
                          color: showBorder != null && showBorder == true
                              ? isFill != null && isFill == true
                                  ? Colors.white
                                  : color ?? AppColors.darkBlue
                              : AppColors.darkBlue),
                    ),
                  ),
                  _button(context),
                ],
              ),
            ),
          )
        : _button(context);
  }
}
