import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../bindings/binding.dart';
import '../screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: TasksScreen(),
      initialBinding: Binding(),
    );
  }
}
