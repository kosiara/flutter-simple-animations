import 'package:flutter/material.dart';

class TweenAnimationPage extends StatefulWidget {
  TweenAnimationPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TweenAnimationPageState createState() => _TweenAnimationPageState();
}

class _TweenAnimationPageState extends State<TweenAnimationPage> with TickerProviderStateMixin {
  AnimationController _simpleAnimController;
  Animation<double> _simpleAnim;

  @override
  void initState() {
    super.initState();
    _simpleAnimController = AnimationController(vsync: this, duration: Duration(milliseconds: 300))
      ..addListener(() => setState(() {}))
      ..addStatusListener((animStatus) {
        if (animStatus == AnimationStatus.completed) _simpleAnimController.reverse();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: _simpleAnim.value),
            child: Container(
              width: 100,
              height: 100,
              child: FlutterLogo(),
            ),
          ),
        ),
      ]),
    );
  }
}
