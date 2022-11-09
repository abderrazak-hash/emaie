import 'package:flutter/material.dart';

//! Colors
const Color white = Colors.white,
    black = Colors.black,
    whitish = Color.fromRGBO(49, 66, 186, 0.03137254901960784),
    greyish = Color(0xFFF1F8FC),
    grey = Color(0xFF989898),
    mainClr = Color(0xFF008FE3),
    red = Color(0xFFE41F00),
    textClr = Color(0xFF124355);

//! Dimensions
late double screenHeight, screenWidth;
double padding = 10.0, margin = 10.0, radius = 4.0;

//! Paths
const String iconsPath = 'assets/icons';

const TextStyle infoStyle = TextStyle(
      color: mainClr,
      fontSize: 12.0,
      fontWeight: FontWeight.w700,
    ),
    fieldStyle = TextStyle(
      color: grey,
      fontSize: 13.0,
    );
