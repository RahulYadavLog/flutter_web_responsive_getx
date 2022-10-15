import 'package:fincare1/todo/todo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../routes/AppRoutes.dart';
class TODOScreen extends StatelessWidget {
  const TODOScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO List"),
      ),
      floatingActionButton: InkWell(
        onTap: (){
          Get.toNamed(AppRoutes.ADDTODO);
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.red,
          ),
          child: Icon(Icons.add,color: Colors.white,),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Obx(()=> ListView.builder(
                itemCount: Get.find<TODOController>().taskList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      trailing: GestureDetector(onTap:(){
                        Get.find<TODOController>().deleteTask(index);
                      },child: const Icon(Icons.delete)),
                      title: Text("${Get.find<TODOController>().taskList[index].task}"));
                }),
          ),
        ),
      )
    );
  }
}
