import 'package:flutter/material.dart';
import 'package:flutter_anim/screens/screen_animated_container.dart';
import 'package:flutter_anim/screens/screen_animated_crossfade.dart';
import 'package:flutter_anim/screens/screen_home.dart';
import 'package:flutter_anim/screens/screen_simple_flare.dart';
import 'package:flutter_anim/screens/screen_simple_nima.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Simple Container Demo'),
      //home: AnimatedContainerPage('Animated Container Demo'),
      //home: AnimatedCrossFadePage('Animated CrossFade Demo'),
      //home: SimpleFlarePage('Simple Flare Demo'),
      home: NimaPage('Simple Nima Demo'),
    );
  }
}
