import 'package:present_sir/model/subject.dart';

Map<int, Subject> _table = {

  //Monday
  1: Subjects.lCKT,
  2: Subjects.tOptical,
  3: Subjects.tOptical,
  4: Subjects.tDSP,
  5: Subjects.tOOP,
  6: Subjects.lCKT,
  7: Subjects.lCKT,
  //Tuesday

  //Wednesday
  //Thursday
  //Friday

  46: Subjects.free
};

Subject getSubject(DateTime _time){

  int _minutesSinceMidnight = _time.hour*60 + _time.minute;
  int _day = _time.weekday-1;
  int _period;
  int _mapIndex;

  if(_minutesSinceMidnight >= 540 && _minutesSinceMidnight <= 705)
    _period = (_minutesSinceMidnight-540)~/55 + 1;
  else if(_minutesSinceMidnight >= 745 && _minutesSinceMidnight<=1045)
    _period = (_minutesSinceMidnight - 580)~/55 + 1;
  else
    return _table[46];

  _mapIndex = _day*9 + _period;
  return _table[_mapIndex];

}