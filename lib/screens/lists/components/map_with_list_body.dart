import 'dart:async';
import 'package:flutter/material.dart';
import 'package:idol_trip_proto/components/back_with_title.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:idol_trip_proto/screens/course_details/course_detail_screen.dart';
import 'package:idol_trip_proto/screens/lists/components/recommend_course_list_card.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GoogleMapController _myMapController;

  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;

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
          SizedBox(height: kDefaultPadding / 2),
          RecommendMap(size: size),
          SizedBox(height: kDefaultPadding),
          // FlatButton(
          //     onPressed: () {
          //       print('hey');
          //     },
          //     child: Text('test button')),
          RecommendCourseListCard(
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CourseDetailScreen()));
            },
            dest1: '이기대',
            dest2: '오륙도',
            courseTitle: '추천1',
          ),
          RecommendCourseListCard(
            press: () {},
            dest1: 'UN평화공원',
            dest2: '경성대',
            courseTitle: '추천2',
          ),
          RecommendCourseListCard(
            press: () {},
            dest1: '오륙도',
            dest2: '신선대',
            courseTitle: '추천3',
          ),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}

class RecommendMap extends StatefulWidget {
  const RecommendMap({
    Key key,
    @required this.size,
    this.mapController,
  }) : super(key: key);

  final Size size;
  final GoogleMapController mapController;

  @override
  _RecommendMapState createState() => _RecommendMapState();
}

class _RecommendMapState extends State<RecommendMap> {
  GoogleMapController _controller;

  var marker = Marker(
    markerId: MarkerId('igidae'),
    position: LatLng(35.13246, 129.12107),
    infoWindow: InfoWindow(
      title: '이기대공원',
      snippet: '이기대공원 주소',
    ),
  );

  var marker2 = Marker(
    markerId: MarkerId('bunpo_ms'),
    position: LatLng(35.12959, 129.11476),
    infoWindow: InfoWindow(
      title: '분포중학교',
      snippet: '분포중학교 주소',
    ),
  );

  var marker3 = Marker(
    markerId: MarkerId('oryukdo'),
    position: LatLng(35.09451, 129.12621),
    infoWindow: InfoWindow(
      title: '오륙도',
      snippet: '오륙도 주소',
    ),
  );

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(35.12959, 129.11476),
    // bearing: 192.8334901395799,
    // tilt: 59.440717697143555,
    zoom: 12,
  );

  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: widget.size.height * 0.4,
      width: widget.size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 10,
              color: kPrimaryColor.withOpacity(0.3))
        ],
        color: Colors.white,
      ),
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: _onMapCreated,
        markers: [marker, marker2, marker3].toSet(),
      ),
    );
  }
}
