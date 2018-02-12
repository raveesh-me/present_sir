import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State createState() {
    return new _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Expanded(
            flex: 3,
            child: new Card(
              child: new Center(
                child: new Text('This Period'),
              ),
            ),
          ),
          new Expanded(
            flex: 8,
            child: new ListView(
              children: new List.generate(
                  7, (i) => new Center(child: new Text('$i is good'))),
            ),
          ),
        ],
      ),
    );
  }
}
