import 'package:flutter/material.dart';
import 'package:idol_trip_proto/components/back_with_title.dart';
import 'package:widget_arrows/widget_arrows.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    // Size size = MediaQuery.of(context).size;

    // it enables scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // HeaderWithSearchBox(size: size),
          Container(
            height: MediaQuery.of(context).padding.top + 10,
          ),
          BackWithTitle(
            title: '추천 코스 보기',
            press: () {},
          ),
          // It will cover 90% of our total width
          SizedBox(height: kDefaultPadding),
          RecommendCourseListCard(
            press: () {},
          ),
          RecommendCourseListCard(
            press: () {},
          ),
          RecommendCourseListCard(
            press: () {},
          ),
          RecommendCourseListCard(
            press: () {},
          ),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}

class RecommendCourseListCard extends StatelessWidget {
  const RecommendCourseListCard({
    Key key,
    this.press,
  }) : super(key: key);
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        width: size.width * 0.9,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 7),
              blurRadius: 5,
              color: kPrimaryColor.withOpacity(0.23),
            )
          ],
        ),
        child: Stack(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LocationIconWithLabel(
                  label: '내위치',
                ),
                ArrowIconWithLabel(),
                LocationIconWithLabel(
                  label: '이기대공원',
                ),
                ArrowIconWithLabel(),
                LocationIconWithLabel(
                  label: '오륙도',
                ),
                // LocationIconWithLabel(
                //   label: '오륙도',
                // ),
              ],
            ),
            Align(
              alignment: Alignment(-1.05, -1.2),
              child: Container(
                padding: EdgeInsets.only(
                  left: kDefaultPadding / 2,
                  right: kDefaultPadding / 2,
                  top: 2,
                  bottom: 2,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 5,
                      color: kPrimaryColor.withOpacity(0.7),
                    )
                  ],
                ),
                child: Text(
                  '추천 1',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArrowIconWithLabel extends StatelessWidget {
  const ArrowIconWithLabel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 30,
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment(0, -1),
            child: Icon(
              Icons.arrow_right,
              size: 35,
            ),
          ),
          Align(
            alignment: Alignment(0.3, 0.7),
            child: Text(
              '도보',
              style: TextStyle(fontSize: 10),
            ),
          ),
          Align(
            alignment: Alignment(0.3, 1.4),
            child: Text(
              '10분',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class LocationIconWithLabel extends StatelessWidget {
  const LocationIconWithLabel({
    Key key,
    this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.location_on,
            color: kPrimaryColor,
            size: 30,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}