import 'package:fincare1/todo/todo_model.dart';
import 'package:get/get.dart';

class TODOController extends GetxController{
  RxList _taskList=<TODOModel>[].obs;
  RxList get taskList =>_taskList;

  void addTask(String task)
  {
    var data=new TODOModel(task);
    _taskList.add(data);
    print(_taskList);
  }
  void deleteTask(int index)
  {
    _taskList.removeAt(index);
  }
}