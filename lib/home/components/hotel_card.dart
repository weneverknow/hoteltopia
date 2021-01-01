import 'package:flutter/material.dart';

import '../../style.dart';
import 'hotel_card/hotel_card_categories.dart';
import 'hotel_card/hotel_card_footer.dart';
import 'hotel_card/hotel_card_icons.dart';
import 'hotel_card/hotel_card_poster.dart';
import 'hotel_card/hotel_card_poster_price.dart';
import 'hotel_card/room_type.dart';
import 'hotel_card/street.dart';
import 'hotel_card/tittle_star.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    Key key,
    @required this.size,
    this.cat,
  }) : super(key: key);

  final Size size;
  final List cat;
  //final List categories = [""];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: defaultPadding * 1.5),
        width: size.width,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 7,
                  spreadRadius: 0,
                  color: Colors.black26,
                  offset: Offset(0, -2))
            ],
            color: bgColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22), topRight: Radius.circular(22))),
        padding: EdgeInsets.symmetric(
            horizontal: defaultPadding * 2, vertical: defaultPadding),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(
                4,
                (index) => Padding(
                      padding: EdgeInsets.only(bottom: defaultPadding),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              HotelCardPoster(size: size),
                              Row(
                                children: List.generate(
                                    cat.length,
                                    (index) => HotelCardCategories(
                                          categories: cat[index],
                                        )),
                              ),
                              PosterPrice(size: size)
                            ],
                          ),
                          TittleAndStar(),
                          RoomType(),
                          Street(),
                          HotelCardFooter()
                        ],
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
