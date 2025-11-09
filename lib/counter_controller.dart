import 'package:get/get.dart';
import 'package:flutter/material.dart';

// Controller
class CounterController extends GetxController {
  var counter = 0.obs;

  void increment() => counter++;
}

// View
class CounterView extends StatelessWidget {
  // Add controller using Get.put()
  final CounterController controller = Get.put(CounterController());

  CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => Text(
          'Count: ${controller.counter.value}',
          style: TextStyle(fontSize: 24),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
