import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CourseDetailListCard extends StatelessWidget {
  const CourseDetailListCard({
    Key key,
    this.press,
    this.title,
    this.desc,
    this.subinfo,
    this.image,
    this.badge,
  }) : super(key: key);

  final Function press;
  final String title, desc, subinfo, image, badge;

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: size.width * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                          image,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      right: kDefaultPadding,
                      left: kDefaultPadding,
                      top: kDefaultPadding / 2,
                      bottom: kDefaultPadding / 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                desc,
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Spacer(),
                              Text(
                                subinfo,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: kPrimaryColor,
                            ),
                            // Icon(
                            //   Icons.play_circle_outline,
                            //   color: kPrimaryColor,
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
                  badge,
                  style: TextStyle(
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
