import 'package:flutter/material.dart';
import 'package:present_sir/model/subject.dart';
import 'package:present_sir/helper/colors.dart';

import 'package:present_sir/helper/styles.dart';

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
      child: new Container(
        height: 90.0,
        color: cSmallCardBackground,
        child: new Center(
          child: new Row(
            children: <Widget>[
              new Expanded(
                flex: 2,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text('[${_subject.code}]',style: sSmallCardCode,),
                    new Text(_subject.name,style: sSmallCardName,)
                  ],
                ),
              ),
              new Expanded(
                flex: 1,
                child: new Container(
                  color: cSmallCardCounterBG,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(_subject.noOfClassesPresent.toString(),style: sSmallCardPresent,),
                      new Text('---',style: sSmallCardClasses),
                      new Text(_subject.noOfClasses.toString(),style: sSmallCardClasses,),
                    ],
                  ),
                ),
              ),
              new Expanded(
                flex: 1,
                child: new Container(
                  decoration: new ShapeDecoration(
                      shape: new CircleBorder(), color: cSmallCardAbsentBG),
                  child: new MaterialButton(
                    child: new Text('A',style: sSmallCardButtonText,),
                    onPressed: _registerAbsent,
                  ),
                ),
              ),
              new Expanded(
                flex: 1,
                child: new Container(
                  decoration: new ShapeDecoration(
                      shape: new CircleBorder(), color: cSmallCardPresentBG),
                  child: new MaterialButton(
                    child: new Text('P',style: sSmallCardButtonText),
                    onPressed: _registerPresent,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
