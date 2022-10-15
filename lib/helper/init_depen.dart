import 'package:fincare1/RM/controller/rm_drawer_controller.dart';
import 'package:fincare1/desktop/controller/date_picker_controller.dart';
import 'package:get/get.dart';

import '../ListController.dart';
import '../TabController.dart';
import '../desktop/controller/BookController.dart';
import '../todo/todo_controller.dart';

class InitDependency extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>TabControllerApp());
    Get.lazyPut(()=>ListController());
    Get.lazyPut(()=>TODOController());
    Get.lazyPut(()=>BookController());
    Get.lazyPut(()=>DatePickerController());
    Get.lazyPut(()=>RmDrawerController());
  }

}