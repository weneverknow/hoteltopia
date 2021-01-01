import 'package:flutter/material.dart';
import 'package:hoteltopia/style.dart';

import 'box_categories.dart';
import 'detail_header.dart';
import 'detail_poster.dart';
import 'detail_price.dart';
import 'detail_room_type.dart';
import 'detail_street.dart';
import 'detail_tittle.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List categories = ['furniture', 'interior'];
  List poster = [
    'assets/images/maxresdefault.jpg',
    'assets/images/livingroom2.jpg',
    'assets/images/livingroom3.jpg',
    'assets/images/livingroom4.jpg'
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.45,
              decoration: BoxDecoration(boxShadow: [posterShadow]),
              child: Stack(
                children: [
                  PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: poster.length,
                    itemBuilder: (context, index) =>
                        DetailPoster(size: size, image: poster[index]),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailHeader(categories: categories),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          margin: EdgeInsets.only(left: defaultPadding, top: 5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                              color: primaryColor, shape: BoxShape.circle),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: (size.height * 0.45) - 110),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children:
                          List.generate(4, (index) => buildDot(index: index)),
                    ),
                  ),
                ],
              ),
            ),
            DetailPrice(size: size)
          ],
        ),
        TittleAndStar(),
        DetailRoomType(),
        DetailStreet(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: defaultPadding / 2),
          child: Text(
            'Description',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed',
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Color.fromARGB(255, 164, 161, 161),
              fontWeight: FontWeight.w200,
            ),
          ),
        )
      ],
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width: 20,
      height: 20,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: index == currentPage ? primaryColor : bgColor,
          shape: BoxShape.circle,
          border: Border.all(color: bgColor)),
    );
  }
}
