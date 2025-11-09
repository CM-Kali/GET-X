import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  String name = 'John';
  int age = 25;

  void updateUser(String newName, int newAge) {
    name = newName;
    age = newAge;
    update(); // Refresh UI
  }
}

class UserView extends StatelessWidget {
  UserView({super.key});

  final UserController controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<UserController>(
          builder: (controller) => Text(
            'Name: ${controller.name}, Age: ${controller.age}',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.updateUser("CMADEEL", 30);
        },
        child: Icon(Icons.update),
      ),
    );
  }
}
