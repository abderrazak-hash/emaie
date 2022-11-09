import 'package:flutter/material.dart';

import 'package:emaie/constants.dart';

class EMaieButton extends TextButton {
  final double height, width;
  EMaieButton({
    Key? key,
    required super.onPressed,
    this.height = 40.0,
    this.width = double.infinity,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
    Color? color,
    String? label,
    String icon = '',
    Widget? son,
  }) : super(
          key: key,
          child: son ??
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(radius)),
                  border: Border.all(
                      color: color != null
                          ? color != white
                              ? color
                              : mainClr
                          : mainClr,
                      width: 1.5),
                  color: color ?? mainClr,
                ),
                child: Center(
                  child: Text(
                    label!,
                    style: TextStyle(
                      color: color != null
                          ? color != white
                              ? white
                              : mainClr
                          : white,
                      fontSize: 13.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
        );
}
