import 'package:flutter/material.dart';

class HeroAnimationPage extends StatefulWidget {
  HeroAnimationPage(this.title);
  final String title;

  @override
  _HeroAnimationPageState createState() => _HeroAnimationPageState();
}

class _HeroAnimationPageState extends State<HeroAnimationPage> {
  var _dashImgUrl = 'assets/images/dash_s.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    position.toString(),
                    style: TextStyle(fontSize: 22.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: 70,
                      child: Image.asset(_dashImgUrl),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
