import 'package:flutter/material.dart';
import 'widgets/home.dart';
import 'helper/colors.dart';

main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Present Sir!',
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: cAppBar ,
          title: new Text('Present Sir!'),
        ),
        body: new HomeScreen(),
      ),
    );
  }
}