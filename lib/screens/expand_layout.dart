import 'package:flutter/material.dart';

class ExpandedWidgetPage extends StatefulWidget {
  ExpandedWidgetPage({Key key}) : super(key: key);

  @override
  _ExpandedWidgetPageState createState() => _ExpandedWidgetPageState();
}

class _ExpandedWidgetPageState extends State<ExpandedWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget Layout'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.green,
          ),
          Expanded(
            flex: 10,
            child: Container(
            color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
            color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}