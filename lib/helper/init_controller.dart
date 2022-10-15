import 'package:fincare1/ListController.dart';
import 'package:fincare1/TabController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../RM/controller/rm_drawer_controller.dart';
import '../desktop/controller/BookController.dart';
import '../desktop/controller/date_picker_controller.dart';
import '../desktop/controller/list_controller.dart';
import '../todo/todo_controller.dart';

Future<void> init() async
{
  Get.lazyPut(()=>TabControllerApp());
  Get.lazyPut(()=>ListController());
  Get.lazyPut(()=>ListModelController());
  Get.lazyPut(()=>TODOController());
  Get.lazyPut(()=>BookController());
  Get.lazyPut(()=>DatePickerController());
  Get.lazyPut(()=>RmDrawerController());
}