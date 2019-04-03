import 'package:flutter/material.dart';

class AnimatedContainer2Page extends StatefulWidget {
  AnimatedContainer2Page(this.title);
  final String title;

  @override
  _AnimatedContainer2PageState createState() => _AnimatedContainer2PageState();
}

class _AnimatedContainer2PageState extends State<AnimatedContainer2Page> {
  var _imgUrl = 'assets/images/flutterdash.png';
  //var _imgUrl = 'assets/images/dash_s.png';

  void _startAnimation() => setState(() {
        var _imgUrl = 'assets/images/dash_s.png';
      });

  void _resetAnimState() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(children: <Widget>[
        Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 2000),
            curve: Curves.bounceOut,
            width: 300.0,
            height: 300.0,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: new ExactAssetImage(_imgUrl),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            child: Image.asset(_imgUrl),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FloatingActionButton(
                onPressed: _resetAnimState,
                tooltip: 'Reset state',
                child: Icon(Icons.stop),
              ),
            ),
          ],
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startAnimation(),
        tooltip: 'Start animation',
        child: Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
