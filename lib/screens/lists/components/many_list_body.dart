import 'package:flutter/material.dart';
import 'package:idol_trip_proto/components/back_with_title.dart';
import 'package:idol_trip_proto/constants.dart';
import 'package:idol_trip_proto/screens/lists/components/recommend_idol_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    List<dynamic> idols = [
      {
        'image': 'assets/images/profile_01_arin_ohmygirl.jpeg',
        'name': '아린',
        'group': '오마이걸'
      },
      {
        'image': 'assets/images/profile_02_jimin_bts.jpeg',
        'name': '지민',
        'group': 'BTS'
      },
      {
        'image': 'assets/images/profile_03_joyuri_izone.jpeg',
        'name': '조유리',
        'group': '아이즈원'
      }
    ];

    // it enables scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // HeaderWithSearchBox(size: size),
          Container(
            height: MediaQuery.of(context).padding.top + 10,
          ),
          BackWithTitle(
            title: '추천 아이돌',
            press: () {},
          ),
          // It will cover 40% of our total width
          SizedBox(height: kDefaultPadding),
          RecommendIdolList(
            idols: idols,
          ),
          RecommendIdolList(
            idols: idols,
          ),
          RecommendIdolList(
            idols: idols,
          ),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
