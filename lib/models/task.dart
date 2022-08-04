import 'package:get/get.dart';

class Task {
  final String name;
  var isDone;

  Task({required this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
