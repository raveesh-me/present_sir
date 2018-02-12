import 'package:flutter/material.dart';
import 'package:present_sir/model/subject.dart';
import 'package:present_sir/model/timetable.dart' as table;
import 'counter.dart';
import 'thisperiod.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  @override
  State createState() {
    return new _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  DateTime _time;
  Subject _subject;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _time = new DateTime.now();
    _subject = table.getSubject(_time);
    _timer = new Timer.periodic(new Duration(seconds: 1), _onTimer);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  _onTimer(Timer _timer) {
    setState(() {
      _time = new DateTime.now();
      _subject = table.getSubject(_time);
    });
  }

  List<Widget> generateCardList() => new List.generate(
      Subjects.subjects.length, (i) => new Counter(Subjects.subjects[i]));

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Expanded(flex: 3, child: new ThisPeriod(_time, _subject)),
          new Expanded(
            flex: 8,
            child: new ListView(children: generateCardList()),
          ),
        ],
      ),
    );
  }
}
