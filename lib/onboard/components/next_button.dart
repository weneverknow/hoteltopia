import 'package:flutter/material.dart';
import 'package:hoteltopia/home/screen.dart';

import '../../style.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: size.width * 0.4,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: bgColor)),
      child: FlatButton(
        height: double.infinity,
        minWidth: double.infinity,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Screen()));
        },
        child: Text(
          'NEXT',
          style: TextStyle(color: bgColor, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
