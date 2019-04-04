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

  void _startAnimation() => setState(() {
        _animationName = "Untitled";
      });

  void _resetAnimState() => setState(() {
        _animationName = "";
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
