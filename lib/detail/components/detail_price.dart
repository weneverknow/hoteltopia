import 'package:flutter/material.dart';

import '../../style.dart';

class DetailPrice extends StatelessWidget {
  const DetailPrice({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 110,
        margin: EdgeInsets.only(top: size.height * 0.41),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22), topRight: Radius.circular(22))),
        child: Text(
          '\$23,456',
          style: TextStyle(
              color: primaryColor, fontWeight: FontWeight.w700, fontSize: 18),
        ),
      ),
    );
  }
}
