import 'package:flutter/material.dart';
import 'package:present_sir/model/subject.dart';
import 'package:intl/intl.dart';

class ThisPeriod extends StatelessWidget {
  final DateTime _time;
  final Subject _subject;
  final NumberFormat _percentFormatter = new NumberFormat.percentPattern();
  final DateFormat _timeFormatter = new DateFormat.jm();

  ThisPeriod(this._time, this._subject);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Center(
        child: new Container(
          child: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Expanded(flex: 1, child: new Text(_subject.teacher)),
                  new Expanded(
                      flex: 2, child: new Text(_timeFormatter.format(_time))),
                  new Expanded(flex: 1, child: new Text(_subject.room))
                ],
              ),
              new Expanded(
                flex: 2,
                child: new Text(_subject.name),
              ),
              new Expanded(
                flex: 1,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Text(
                        '${_subject.noOfClassesPresent}/${_subject.noOfClasses}'),
                    new Text(_percentFormatter.format(
                        _subject.noOfClassesPresent / _subject.noOfClasses))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
