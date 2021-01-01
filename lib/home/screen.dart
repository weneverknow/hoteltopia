import 'package:flutter/material.dart';
import 'package:hoteltopia/home/components/body.dart';
import 'package:hoteltopia/style.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Body(),
      ),
    );
  }
}
