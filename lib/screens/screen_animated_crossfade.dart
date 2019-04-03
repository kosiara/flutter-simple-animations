import 'package:flutter/material.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  AnimatedCrossFadePage(this.title);
  final String title;

  @override
  _AnimatedCrossFadePageState createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  var _rainbowdashImgUrl = 'assets/images/rainbowdash.png';
  var _dashImgUrl = 'assets/images/dash_s.png';
  CrossFadeState _animationStarted = CrossFadeState.showFirst;

  void _startAnimation() => setState(() {
        _animationStarted = CrossFadeState.showSecond;
      });

  void _resetAnimState() => setState(() {
        _animationStarted = CrossFadeState.showFirst;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(children: <Widget>[
        Center(
          child: AnimatedCrossFade(
            duration: Duration(milliseconds: 300),
            crossFadeState: _animationStarted,
            firstChild: Image.asset(_dashImgUrl),
            secondChild: Image.asset(_rainbowdashImgUrl),
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
      ),
    );
  }
}
