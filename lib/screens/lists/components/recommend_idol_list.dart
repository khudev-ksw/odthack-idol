import 'package:flutter/material.dart';
import 'package:idol_trip_proto/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecommendIdolList extends StatelessWidget {
  const RecommendIdolList({
    Key key,
    this.idols,
  }) : super(key: key);

  final List<dynamic> idols;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      SmallSizeRecommendIdolCard(
        image: idols[0]['image'],
        title: idols[0]['name'],
        subtitle: idols[0]['group'],
        press: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailScreen()));
        },
      ),
      SmallSizeRecommendIdolCard(
          image: idols[1]['image'],
          title: idols[1]['name'],
          subtitle: idols[1]['group']),
      SmallSizeRecommendIdolCard(
          image: idols[2]['image'],
          title: idols[2]['name'],
          subtitle: idols[2]['group']),
      Container(
        width: kDefaultPadding,
      )
    ]);
  }
}

class SmallSizeRecommendIdolCard extends StatelessWidget {
  const SmallSizeRecommendIdolCard({
    Key key,
    this.image,
    this.title,
    this.subtitle,
    // this.price,
    this.press,
  }) : super(key: key);

  final String image, title, subtitle;
  // final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding,
      ),
      width: size.width * 0.262,
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * 0.262,
            height: size.height * 0.174,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 20,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$title',
                        style: Theme.of(context).textTheme.button,
                      ),
                      Text(
                        '$subtitle',
                        style: TextStyle(
                          fontSize: 13,
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
