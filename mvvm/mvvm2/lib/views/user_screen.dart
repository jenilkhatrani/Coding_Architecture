
import 'package:flutter/material.dart';
import 'package:mvvm2/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<UserViewModel>(context);

    final TextEditingController nameController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    final TextEditingController courseController = TextEditingController();

    String? nameError;
    String? ageError;
    String? courseError;

    void validateAndSubmit() {

      viewModel.setName(nameController.text);
      viewModel.setAge(ageController.text);
      viewModel.setCourse(courseController.text);

      if (nameController.text.isEmpty) {

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Enter Name')),
        );
           }

      if (ageController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Enter valid age')),
        );
      }

      if (courseController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Enter your course')),
        );
      }

      nameController.clear();
      ageController.clear();
      courseController.clear();

    }

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text("MVVM Form Submission", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(
              'Name:',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Age:',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                hintText: 'Enter your age',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            Text(
              'Course:',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: courseController,
              decoration: InputDecoration(
                hintText: 'Enter your course name',
                errorText: courseError,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: validateAndSubmit,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
