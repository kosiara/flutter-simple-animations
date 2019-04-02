import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _boxSize = 200.0;

  void _startAnimation() {
    setState(() {
      _boxSize *= 1.3;
    });
  }

  void _resetAnimState() {
    setState(() {
      _boxSize = 200;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(children: <Widget>[
        new Center(
          child: new Container(
              decoration: new BoxDecoration(
                color: Colors.purple,
              ),
              child: new FlutterLogo(
                size: _boxSize,
              )),
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
        onPressed: _startAnimation,
        tooltip: 'Start animation',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
