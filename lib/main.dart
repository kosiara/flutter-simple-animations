import 'package:flutter/material.dart';
import 'package:flutter_anim/screens/screen_animated_container.dart';
import 'package:flutter_anim/screens/screen_animated_container_2.dart';
import 'package:flutter_anim/screens/screen_home.dart';

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
      home: AnimatedContainer2Page('Animated Container Demo 2'),
    );
  }
}
