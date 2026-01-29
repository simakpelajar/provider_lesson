import 'package:flutter/material.dart';
import 'package:provider_lesson/person/person.dart';

class PersonProvider extends ChangeNotifier{
  Person _data = Person('', 0);
  Person get data => _data;

  updateName(String n){
    _data = _data.copyWith(name: n);
    notifyListeners();
  }

   updateAge(int n){
    _data = _data.copyWith(age: n);
    notifyListeners();
  }


}