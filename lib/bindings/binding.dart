import 'package:get/get.dart';
import '../models/TasksController.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TasksController>(() => TasksController());
  }
}
