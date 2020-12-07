import 'package:flutter/material.dart';
import 'package:idol_trip_proto/constants.dart';
import 'package:idol_trip_proto/screens/details/components/title_and_desc.dart';
import 'package:idol_trip_proto/screens/lists/map_with_list.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndDesc(
            title: '아린(오마이걸)',
            subtitle: '부산 남구 용호동',
            desc: '추천 : 16',
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MapWithListScreen()));
                  },
                  child: Text(
                    '추천 코스 보기',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Text('주변 유명 관광지'),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
