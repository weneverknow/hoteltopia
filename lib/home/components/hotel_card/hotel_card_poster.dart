import 'package:flutter/material.dart';
import 'package:hoteltopia/detail/screen.dart';
import 'package:hoteltopia/style.dart';

class HotelCardPoster extends StatelessWidget {
  const HotelCardPoster({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Screen()));
      },
      child: Container(
        width: size.width * 0.9,
        height: 160,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/maxresdefault.jpg'),
                fit: BoxFit.cover),
            color: Colors.black,
            boxShadow: [posterShadow],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22), topRight: Radius.circular(22))),
      ),
    );
  }
}
