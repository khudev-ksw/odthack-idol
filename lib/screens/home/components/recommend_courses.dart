import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecommendCourses extends StatelessWidget {
  const RecommendCourses({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendCourseCard(
            image: 'assets/images/profile_02_jimin_bts.jpeg',
            press: () {},
          ),
          RecommendCourseCard(
            image: 'assets/images/profile_02_jimin_bts.jpeg',
            press: () {},
          ),
          Container(
            width: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

class RecommendCourseCard extends StatelessWidget {
  const RecommendCourseCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
