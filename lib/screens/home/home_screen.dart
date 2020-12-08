import 'package:flutter/material.dart';
// import 'package:idol_trip_proto/constants.dart';
import 'package:idol_trip_proto/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      // bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
    );
  }
}
