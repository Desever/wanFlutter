import 'package:flutter/material.dart';

class HotTab extends StatefulWidget{
  @override
  HotTabState createState() => HotTabState();
}

class HotTabState extends State<HotTab> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第一个界面'),
      ),
      body: new Center(
        child: new Text('first'),
      ),
    );
  }
}