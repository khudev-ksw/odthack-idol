import 'package:flutter/material.dart';
import 'package:idol_trip_proto/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecommendIdols extends StatelessWidget {
  const RecommendIdols({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: <Widget>[
        RecommendIdolCard(
          image: 'assets/images/profile_01_arin_ohmygirl.jpeg',
          title: '아린(오마이걸)',
          area: '부산 남구 용호동',
          press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailScreen()));
          },
        ),
        RecommendIdolCard(
            image: 'assets/images/profile_02_jimin_bts.jpeg',
            title: '지민(BTS)',
            area: '부산 금정구 회동동'),
        RecommendIdolCard(
            image: 'assets/images/profile_03_joyuri_izone.jpeg',
            title: '조유리(아이즈원)',
            area: '부산 남구 문현동'),
        Container(
          width: kDefaultPadding,
        )
      ]),
    );
  }
}

class RecommendIdolCard extends StatelessWidget {
  const RecommendIdolCard({
    Key key,
    this.image,
    this.title,
    this.area,
    // this.price,
    this.press,
  }) : super(key: key);

  final String image, title, area;
  // final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * 0.4,
            height: size.height * 0.337,
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
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '$title\n',
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                            text: '$area',
                            style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5)))
                      ],
                    ),
                  ),
                  // Spacer(),
                  // Text(
                  //   '무엇?',
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .button
                  //       .copyWith(color: kPrimaryColor),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
