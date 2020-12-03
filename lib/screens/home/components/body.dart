import 'package:flutter/material.dart';
import 'package:idol_trip_proto/constants.dart';
import 'package:idol_trip_proto/screens/home/components/recommend_courses.dart';
import 'package:idol_trip_proto/screens/home/components/recommned_idols.dart';
import 'package:idol_trip_proto/screens/home/components/title_with_more.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enables scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMore(
            title: '추천 아이돌',
            press: () {},
          ),
          // It will cover 40% of our total width
          RecommendIdols(),
          TitleWithMore(title: '추천 코스', press: () {}),
          RecommendCourses(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
