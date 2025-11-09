import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'UserController.dart';
import 'counter_controller.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blue,
         title: Text("CM GETX"),
         
       ),
   body: Column(
     children: [
       ElevatedButton(onPressed: (){
         Get.to(CounterView());

       }, child: Text("COUNTER")),
       SizedBox(width: 20,),
       ElevatedButton(onPressed: (){
         Get.to(UserView());
       }, child: Text("UserView"))
     ],
   ),
      
    );
  }
}
