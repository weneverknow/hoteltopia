import 'package:flutter/material.dart';
import 'package:hoteltopia/style.dart';

import 'logo.dart';
import 'next_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(gradient: bgGradientColor),
        child: Stack(
          children: [
            Logo(),
            Positioned(
              right: defaultPadding,
              bottom: defaultPadding,
              child: NextButton(size: size),
            )
          ],
        ));
  }
}
