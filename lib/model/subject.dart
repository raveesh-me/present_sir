

class Subject{

  String _room, _name, _code, _teacher;
  int _noOfClasses, _noOfClassesPresent;

  int get noOfClasses => _noOfClasses;
  int get noOfClassesPresent => _noOfClassesPresent;

  String get room => _room;
  String get name => _name;
  String get code => _code;
  String get teacher => _teacher;

  Subject(this._code, this._name, this._teacher, this._room){
    _noOfClasses = 0;
    _noOfClassesPresent = 0;
  }

  registerPresent(){
    _noOfClasses++;
    _noOfClassesPresent++;
  }

  registerAbsent(){
    _noOfClasses++;
  }


}

class Subjects{

  //Paste your prepared file here
  static Subject tVLSI = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject tOOP = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject tOptical = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject tNetworking = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject tDSP = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject lDSP = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject lCKT = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject free = new Subject('ABC000', 'Chutti Nothing to Do', 'YO', 'OMNI-00');

  //We will enumerate the list on spot though.
  static List<Subject> subjects = [
    free, tVLSI, tOOP, tOptical, tNetworking, tDSP, lDSP, lCKT
  ];


}