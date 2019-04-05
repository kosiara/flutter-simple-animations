import 'package:flutter/material.dart';
import 'package:nima/nima_actor.dart';

class NimaPage extends StatefulWidget {
  NimaPage(this.title);
  final String title;

  @override
  _NimaPageState createState() => _NimaPageState();
}

class _NimaPageState extends State<NimaPage> {
  var _animationName = "idle";
  bool _isPaused = true;

  void _startAnimation() => setState(() {
        _animationName = "attack"; // 'attack' , 'jump', 'idle'
        _isPaused = false;
      });

  void _resetAnimState() => setState(() {
        _animationName = "idle";
      });

  void _jumpAnimState() => setState(() {
        _animationName = "jump";
        _isPaused = true;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: NimaActor("assets/anim/robot.nma",
                alignment: Alignment.center, fit: BoxFit.contain, animation: _animationName),
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
                child: Icon(Icons.pause),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FloatingActionButton(
                onPressed: _jumpAnimState,
                tooltip: 'Jump state',
                child: Icon(Icons.arrow_upward),
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
