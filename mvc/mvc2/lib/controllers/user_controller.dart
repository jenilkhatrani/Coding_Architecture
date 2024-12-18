import 'package:mvc2/models/user_model.dart';

class UserController {
  final UserModel _user = UserModel();

  UserModel get user => _user;

  void setName(String name) {
    _user.name = name;
  }

  void setAge(int age) {
    _user.age = age;
  }

  void setCourse(String course) {
    _user.course = course;
  }

  void submitUserData(String name, int age, String course) {
    print('User Data Submitted: $name, $age, $course');
  }

}
