import 'package:flutter/material.dart';
import 'package:idol_trip_proto/constants.dart';
import 'package:idol_trip_proto/screens/home/components/recommend_courses.dart';
import 'package:idol_trip_proto/screens/home/components/recommned_idols.dart';
import 'package:idol_trip_proto/screens/home/components/title_with_more.dart';
import 'package:idol_trip_proto/screens/lists/many_list_screen.dart';
import 'package:idol_trip_proto/screens/lists/wide_list_screen.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enables scrolling on small device
    return Column(
      children: <Widget>[
        HeaderWithSearchBox(size: size),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: kDefaultPadding),
                TitleWithMore(
                  title: '추천 아이돌',
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManyListScreen()));
                  },
                ),
                // It will cover 40% of our total width
                RecommendIdols(),
                TitleWithMore(
                    title: '추천 코스',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WideListScreen()));
                    }),
                RecommendCourses(),
                SizedBox(height: kDefaultPadding)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
