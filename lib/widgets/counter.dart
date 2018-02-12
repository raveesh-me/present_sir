import 'package:flutter/material.dart';
import 'package:present_sir/model/subject.dart';

class Counter extends StatefulWidget {
  final Subject _subject;

  Counter(this._subject);

  @override
  State createState() => new _Counter(_subject);
}

class _Counter extends State<Counter> {
  Subject _subject;
  _Counter(this._subject);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _registerPresent() {
    setState(() => _subject.registerPresent());
  }

  _registerAbsent() {
    setState(() => _subject.registerAbsent());
  }

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: new Column(
                children: <Widget>[
                  new Text(_subject.code),
                  new Text(_subject.name)
                ],
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Column(
                children: <Widget>[
                  new Text(_subject.noOfClassesPresent.toString()),
                  new Text('---'),
                  new Text(_subject.noOfClasses.toString()),
                ],
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Container(
                decoration: new ShapeDecoration(
                    shape: new CircleBorder(), color: Colors.red),
                child: new MaterialButton(
                  child: new Text('A'),
                  onPressed: _registerAbsent,
                ),
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Container(
                decoration: new ShapeDecoration(
                    shape: new CircleBorder(), color: Colors.green),
                child: new MaterialButton(
                  child: new Text('P'),
                  onPressed: _registerPresent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
