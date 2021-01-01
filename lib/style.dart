import 'package:flutter/material.dart';

const defaultPadding = 16.0;

const primaryColor = Color.fromARGB(255, 255, 48, 42);
const textColor = Colors.black;
const textHighlightColor = Color.fromARGB(255, 173, 173, 173);
const textTittleColor = Colors.black;
const bgColor = Colors.white;

const bgGradientColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 255, 48, 42),
      Color.fromARGB(255, 255, 105, 34)
    ]);

const posterShadow = BoxShadow(
    blurRadius: 4,
    spreadRadius: 0,
    color: Colors.black26,
    offset: Offset(0, 4));
