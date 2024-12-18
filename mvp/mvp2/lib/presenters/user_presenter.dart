// presenter/form_presenter.dart
import '../model/user_model.dart';
import '../view/form_view.dart';

class FormPresenter {
  final FormView view;

  FormPresenter({required this.view});

  void onSubmit(String name, int age, String course) {
    UserModel user = UserModel(name: name, age: age, course: course);

    if (!user.validateData()) {
      view.showValidationError("Please fill all fields correctly.");
    } else {
      view.showSuccessMessage("Form Submitted Successfully!");
    }
  }
}
