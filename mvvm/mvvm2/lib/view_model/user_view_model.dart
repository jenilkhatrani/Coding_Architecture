
import 'package:flutter/material.dart';
import 'package:mvvm2/models/user_model.dart';

class UserViewModel extends ChangeNotifier {
  final UserModel _model = UserModel();

  String get name => _model.name;
  String get age => _model.age;
  String get course => _model.course;

  void setName(String name) {
    _model.setName(name);
    notifyListeners();
  }

  void setAge(String age) {
    _model.setAge(age);
    notifyListeners();
  }

  void setCourse(String course) {
    _model.setCourse(course);
    notifyListeners();
  }
}
