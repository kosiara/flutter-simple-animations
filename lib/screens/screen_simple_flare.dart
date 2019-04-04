import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class SimpleFlarePage extends StatefulWidget {
  SimpleFlarePage(this.title);
  final String title;

  @override
  _SimpleFlarePageState createState() => _SimpleFlarePageState();
}

class _SimpleFlarePageState extends State<SimpleFlarePage> {
  var _animationName = "";
  bool _isPaused = true;

  void _startAnimation() => setState(() {
        _animationName = "Untitled";
        _isPaused = false;
      });

  void _resetAnimState() => setState(() {
        _animationName = "";
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
          child: FlareActor(
            "assets/anim/success_check.flr",
            animation: _animationName,
            isPaused: _isPaused,
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
