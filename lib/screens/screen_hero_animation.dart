import 'package:flutter/material.dart';
import 'package:flutter_anim/screens/screen_hero_animation_details.dart';

class HeroAnimationPage extends StatefulWidget {
  HeroAnimationPage(this.title);
  final String title;

  @override
  _HeroAnimationPageState createState() => _HeroAnimationPageState();
}

class _HeroAnimationPageState extends State<HeroAnimationPage> {
  var _dashImgUrl = 'assets/images/dash_s.png';

  _onTap(String position) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => HeroAnimationDetailsPage(position)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return InkWell(
            onTap: () => _onTap(position.toString()),
            child: Card(
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
                      child: Hero(
                        tag: "hero_anim_example_tag" + position.toString(),
                        child: Container(
                          width: 70,
                          child: Image.asset(_dashImgUrl),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
