import 'package:flutter/material.dart';

class HeroAnimationDetailsPage extends StatefulWidget {
  @override
  _HeroAnimationDetailsPageState createState() => _HeroAnimationDetailsPageState();
}

class _HeroAnimationDetailsPageState extends State<HeroAnimationDetailsPage> {
  //var _rainbowdashImgUrl = 'assets/images/rainbowdash.png';
  var _dashImgUrl = 'assets/images/dash_s.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hero animation - details"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image.asset(_dashImgUrl),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Item details"),
            ),
          ],
        ));
  }
}
